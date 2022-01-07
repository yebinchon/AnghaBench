
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_1__ fh; int ctrl_handler; } ;
struct s5p_jpeg {int lock; } ;
struct file {int private_data; } ;


 struct s5p_jpeg_ctx* fh_to_ctx (int ) ;
 int kfree (struct s5p_jpeg_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct s5p_jpeg* video_drvdata (struct file*) ;

__attribute__((used)) static int s5p_jpeg_release(struct file *file)
{
 struct s5p_jpeg *jpeg = video_drvdata(file);
 struct s5p_jpeg_ctx *ctx = fh_to_ctx(file->private_data);

 mutex_lock(&jpeg->lock);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 mutex_unlock(&jpeg->lock);

 return 0;
}
