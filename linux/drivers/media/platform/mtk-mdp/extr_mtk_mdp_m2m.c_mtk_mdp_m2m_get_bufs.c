
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timestamp; } ;
struct vb2_v4l2_buffer {TYPE_1__ vb2_buf; } ;
struct mtk_mdp_frame {int addr; } ;
struct mtk_mdp_ctx {int m2m_ctx; struct mtk_mdp_frame d_frame; struct mtk_mdp_frame s_frame; } ;


 int mtk_mdp_prepare_addr (struct mtk_mdp_ctx*,TYPE_1__*,struct mtk_mdp_frame*,int *) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static void mtk_mdp_m2m_get_bufs(struct mtk_mdp_ctx *ctx)
{
 struct mtk_mdp_frame *s_frame, *d_frame;
 struct vb2_v4l2_buffer *src_vbuf, *dst_vbuf;

 s_frame = &ctx->s_frame;
 d_frame = &ctx->d_frame;

 src_vbuf = v4l2_m2m_next_src_buf(ctx->m2m_ctx);
 mtk_mdp_prepare_addr(ctx, &src_vbuf->vb2_buf, s_frame, &s_frame->addr);

 dst_vbuf = v4l2_m2m_next_dst_buf(ctx->m2m_ctx);
 mtk_mdp_prepare_addr(ctx, &dst_vbuf->vb2_buf, d_frame, &d_frame->addr);

 dst_vbuf->vb2_buf.timestamp = src_vbuf->vb2_buf.timestamp;
}
