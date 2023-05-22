# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MIT

module Vagrant
  module Config
    module V1
      # This is a configuration object that can have anything done
      # to it. Anything, and it just appears to keep working.
      class DummyConfig
        def method_missing(name, *args, &block)
          DummyConfig.new
        end
      end
    end
  end
end
