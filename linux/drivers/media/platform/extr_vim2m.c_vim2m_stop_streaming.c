
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m2m_ctx; } ;
struct vim2m_ctx {int irqlock; int hdl; TYPE_1__ fh; int work_run; } ;
struct TYPE_5__ {int req; } ;
struct TYPE_6__ {TYPE_2__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; } ;
struct vb2_queue {int type; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VB2_BUF_STATE_ERROR ;
 int cancel_delayed_work_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_ctrl_request_complete (int ,int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct vim2m_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void vim2m_stop_streaming(struct vb2_queue *q)
{
 struct vim2m_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vbuf;
 unsigned long flags;

 cancel_delayed_work_sync(&ctx->work_run);

 for (;;) {
  if (V4L2_TYPE_IS_OUTPUT(q->type))
   vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
  if (!vbuf)
   return;
  v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
        &ctx->hdl);
  spin_lock_irqsave(&ctx->irqlock, flags);
  v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
  spin_unlock_irqrestore(&ctx->irqlock, flags);
 }
}
