
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct gsc_ctx {scalar_t__ m2m_ctx; int state; } ;


 int pr_debug (char*,struct gsc_ctx*,int ) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_m2m_buf_queue (scalar_t__,struct vb2_v4l2_buffer*) ;
 struct gsc_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void gsc_m2m_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct gsc_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);

 pr_debug("ctx: %p, ctx->state: 0x%x", ctx, ctx->state);

 if (ctx->m2m_ctx)
  v4l2_m2m_buf_queue(ctx->m2m_ctx, vbuf);
}
