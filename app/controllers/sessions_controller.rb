class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to '/login' if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete(:name)
    redirect_to '/login'
  end

end
