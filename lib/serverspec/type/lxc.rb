module ServerSpec
  module Type
    class Lxc < Base
      def exists?
        backend.check_container(@name)
      end

      def running?(@name)
        backend.check_container_running(@name)
      end

      def to_s
        'LXC'
      end
    end
  end
end
