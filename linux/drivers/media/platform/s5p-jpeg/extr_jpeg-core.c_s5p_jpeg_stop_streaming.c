
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {scalar_t__ type; } ;
struct s5p_jpeg_ctx {scalar_t__ state; TYPE_1__* jpeg; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ JPEGCTX_RESOLUTION_CHANGE ;
 scalar_t__ JPEGCTX_RUNNING ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int pm_runtime_put (int ) ;
 int s5p_jpeg_set_capture_queue_data (struct s5p_jpeg_ctx*) ;
 struct s5p_jpeg_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void s5p_jpeg_stop_streaming(struct vb2_queue *q)
{
 struct s5p_jpeg_ctx *ctx = vb2_get_drv_priv(q);






 if (ctx->state == JPEGCTX_RESOLUTION_CHANGE &&
     q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  s5p_jpeg_set_capture_queue_data(ctx);
  ctx->state = JPEGCTX_RUNNING;
 }

 pm_runtime_put(ctx->jpeg->dev);
}
