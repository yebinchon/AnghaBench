
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timestamp; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct bdisp_frame {int paddr; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct bdisp_ctx {TYPE_1__ fh; struct bdisp_frame dst; struct bdisp_frame src; } ;


 int bdisp_get_addr (struct bdisp_ctx*,TYPE_2__*,struct bdisp_frame*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static int bdisp_get_bufs(struct bdisp_ctx *ctx)
{
 struct bdisp_frame *src, *dst;
 struct vb2_v4l2_buffer *src_vb, *dst_vb;
 int ret;

 src = &ctx->src;
 dst = &ctx->dst;

 src_vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 ret = bdisp_get_addr(ctx, &src_vb->vb2_buf, src, src->paddr);
 if (ret)
  return ret;

 dst_vb = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 ret = bdisp_get_addr(ctx, &dst_vb->vb2_buf, dst, dst->paddr);
 if (ret)
  return ret;

 dst_vb->vb2_buf.timestamp = src_vb->vb2_buf.timestamp;

 return 0;
}
