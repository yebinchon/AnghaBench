
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct rga_ctx {TYPE_1__ fh; } ;


 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_m2m_buf_queue (int ,struct vb2_v4l2_buffer*) ;
 struct rga_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void rga_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct rga_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);

 v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
}
