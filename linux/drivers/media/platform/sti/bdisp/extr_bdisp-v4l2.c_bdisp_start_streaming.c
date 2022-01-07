
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; struct bdisp_ctx* drv_priv; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct bdisp_ctx {TYPE_1__ fh; TYPE_2__* bdisp_dev; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int VB2_BUF_STATE_QUEUED ;
 int dev_err (int ,char*) ;
 int pm_runtime_get_sync (int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static int bdisp_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct bdisp_ctx *ctx = q->drv_priv;
 struct vb2_v4l2_buffer *buf;
 int ret = pm_runtime_get_sync(ctx->bdisp_dev->dev);

 if (ret < 0) {
  dev_err(ctx->bdisp_dev->dev, "failed to set runtime PM\n");

  if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
   while ((buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx)))
    v4l2_m2m_buf_done(buf, VB2_BUF_STATE_QUEUED);
  } else {
   while ((buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx)))
    v4l2_m2m_buf_done(buf, VB2_BUF_STATE_QUEUED);
  }

  return ret;
 }

 return 0;
}
