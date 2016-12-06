$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'checkr/version'

Gem::Specification.new do |s|
  s.name = 'checkr-official'
  s.summary = 'Ruby bindings for Checkr API'
  s.description = 'Checkr - Automated background screenings and driving records. See https://checkr.com/ for details.'
  s.homepage = 'https://checkr.com/'
  s.authors = ['Jon Calhoun']
  s.email = ['joncalhoun@gmail.com']
  s.version = Checkr::VERSION

  s.required_ruby_version = '>= 2.2.2'

  s.add_dependency('rest-client', '>= 1.4', '< 3.0')
  s.add_dependency('json', '~> 2.0.0')

  s.add_development_dependency('mocha', '~> 0.13.2')
  s.add_development_dependency('shoulda', '~> 3.4.0')
  s.add_development_dependency('activesupport', '~> 5.0.0')
  s.add_development_dependency('bump', '0.5.2')
  s.add_development_dependency('rake', '10.4.2')
  s.add_development_dependency('test-unit')

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
