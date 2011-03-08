namespace :test do
  desc "Run JavaScript Unit Tests using EnvJasmine"
  task :javascript do
    env_jasmine_dir = File.join(File.expand_path(File.dirname(__FILE__)), "..", "..", "test", "javascript", "EnvJasmine")

    system("#{env_jasmine_dir}/bin/run_all_tests.sh #{env_jasmine_dir}")
  end
end

Rake::Task[:test].enhance do
  puts "Running JavaScript Tests"
  Rake::Task['test:javascript'].invoke
end
