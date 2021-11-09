# frozen_string_literal: true

require_relative "lib/vindi/version"

Gem::Specification.new do |spec|
  spec.name          = "vindi-hermes"
  spec.version       = Vindi::VERSION
  spec.authors       = ["Wedson Lima"]
  spec.email         = ["wedson.sousa.lima@gmail.com"]

  spec.summary       = "Vindi API - Let the god of trade help you"
  spec.description   = "ActiveRecord-like way to interact with Vindi API"
  spec.homepage      = "https://github.com/wedsonlima/vindi-ruby"
  spec.license       = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_dependency "dry-configurable", "~> 0.7.0"
  spec.add_dependency "faraday", "~> 1.4"
  spec.add_dependency "faraday_middleware", "~> 1.0"
  spec.add_dependency "her", "~> 1.1"
end
