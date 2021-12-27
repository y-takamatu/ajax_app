class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  

  def createe
    post = Post.create(content: params[:content])
    render json:{ post: post }
    # postの値を postというキーとセットでjavascriptに送信
  end
end
