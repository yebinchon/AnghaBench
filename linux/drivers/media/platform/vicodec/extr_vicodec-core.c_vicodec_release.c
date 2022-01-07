
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int lock; } ;
struct TYPE_4__ {int compressed_frame; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct vicodec_ctx {TYPE_1__ state; int hdl; TYPE_2__ fh; } ;
struct file {int dummy; } ;


 struct vicodec_ctx* file2ctx (struct file*) ;
 int kfree (struct vicodec_ctx*) ;
 int kvfree (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_2__*) ;
 int v4l2_fh_exit (TYPE_2__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int vicodec_release(struct file *file)
{
 struct video_device *vfd = video_devdata(file);
 struct vicodec_ctx *ctx = file2ctx(file);

 mutex_lock(vfd->lock);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 mutex_unlock(vfd->lock);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_ctrl_handler_free(&ctx->hdl);
 kvfree(ctx->state.compressed_frame);
 kfree(ctx);

 return 0;
}
