
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct pxp_ctx {TYPE_1__ fh; } ;


 int pxp_start (struct pxp_ctx*,struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static void pxp_device_run(void *priv)
{
 struct pxp_ctx *ctx = priv;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;

 src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);

 pxp_start(ctx, src_buf, dst_buf);
}
