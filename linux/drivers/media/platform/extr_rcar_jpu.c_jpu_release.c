
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m2m_ctx; } ;
struct jpu_ctx {TYPE_1__ fh; int ctrl_handler; } ;
struct jpu {scalar_t__ ref_count; int mutex; int clk; } ;
struct file {int private_data; } ;


 int clk_disable_unprepare (int ) ;
 struct jpu_ctx* fh_to_ctx (int ) ;
 int kfree (struct jpu_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct jpu* video_drvdata (struct file*) ;

__attribute__((used)) static int jpu_release(struct file *file)
{
 struct jpu *jpu = video_drvdata(file);
 struct jpu_ctx *ctx = fh_to_ctx(file->private_data);

 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);

 mutex_lock(&jpu->mutex);
 if (--jpu->ref_count == 0)
  clk_disable_unprepare(jpu->clk);
 mutex_unlock(&jpu->mutex);

 return 0;
}
