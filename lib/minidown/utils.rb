module Minidown
  module Utils
    Regexp = {
      lines: /\n|\r\n/,
      blank_line: /\A\s*\z/,
      raw_html: /\A\s*(\<(?=[^\<\>]).+(?<=[^\<\>])\>)*\s*\z/,
      h1_or_h2: /\A([=-]{3,})(.*)/,
      start_with_shape: /\A(\#{1,6})\s*(.+?)\s*#*\z/,
      start_with_quote: /\A\>\s*(.+)/,
      unorder_list: /\A(\s*)[*\-+]\s+(.+)/,
      order_list: /\A(\s*)\d+\.\s+(.+)/,
      code_block: /\A\s*[`~]{3,}\s*(\S*)/,
      table: /\A\|?([^\|]+(?:\|[^\|]*)*)\|?\s*\z/,
      dividing_line: /\A(\s*[*-]\s*){3,}\z/,
      indent_code: /\A\s{4}(.+)/,
      pipe_symbol: /\|/
    }.freeze

    class << self
      def escape_html str
        sanitized_str = str.dup
        sanitized_str.gsub! "<".freeze, "&lt;".freeze
        sanitized_str.gsub! ">".freeze, "&gt;".freeze
        sanitized_str
      end
    end
  end
end
