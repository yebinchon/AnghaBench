
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int m2m_ctx; } ;
struct vicodec_ctx {int lock; int hdl; TYPE_3__ fh; } ;
struct TYPE_4__ {int req; } ;
struct TYPE_5__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct vb2_queue {int type; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int v4l2_ctrl_request_complete (int ,int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct vicodec_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void vicodec_return_bufs(struct vb2_queue *q, u32 state)
{
 struct vicodec_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vbuf;

 for (;;) {
  if (V4L2_TYPE_IS_OUTPUT(q->type))
   vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
  if (vbuf == ((void*)0))
   return;
  v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
        &ctx->hdl);
  spin_lock(ctx->lock);
  v4l2_m2m_buf_done(vbuf, state);
  spin_unlock(ctx->lock);
 }
}
