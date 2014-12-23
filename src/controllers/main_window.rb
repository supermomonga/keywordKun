# coding: utf-8

class MainWindowController
  include JRubyFX::Controller
  fxml 'views/main_window.fxml'.tap{|it|
    break "src/#{it}" if JRubyFX::Application.in_jar?
  }

  def initialize(*args)
    @click_count = 0
    btn_clicked
    super
  end

  def btn_clicked
    @click_count += 1
    @label.text = "Clicked: #{@click_count}"
  end

end

