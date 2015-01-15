require 'rspec'
require 'guard/annotate'

Dir["#{File.expand_path('..', __FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |c|
  c.filter_run :focus => true
  c.run_all_when_everything_filtered = true

  c.before( :each ) do
    allow(::Guard::Notifier).to receive( :notify ).and_return( true )
  end
end
