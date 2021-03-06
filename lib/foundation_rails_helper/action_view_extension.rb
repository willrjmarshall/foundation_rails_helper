module ActionView
  module Helpers
    module FormHelper
      def f_form_for(record, options = {auto_labels: true}, &block)
        options[:builder] ||= FoundationRailsHelper::FormBuilder
        options[:html] ||= {}
        options[:html][:class] ||= 'nice'
        form_for(record, options, &block)
      end

      def f_fields_for(record_name, record_object = nil, options = {auto_labels: true}, &block)
        options[:builder] ||= FoundationRailsHelper::FormBuilder
        options[:html] ||= {}
        options[:html][:class] ||= 'nice'
        options[:html][:attached_labels] = options[:attached_labels]
        fields_for(record_name, record_object, options, &block)
      end
    end
  end
end
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  html_tag
end
