
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int type; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct rga_ctx {TYPE_1__ fh; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct rga_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void rga_buf_return_buffers(struct vb2_queue *q,
       enum vb2_buffer_state state)
{
 struct rga_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vbuf;

 for (;;) {
  if (V4L2_TYPE_IS_OUTPUT(q->type))
   vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
  if (!vbuf)
   break;
  v4l2_m2m_buf_done(vbuf, state);
 }
}
