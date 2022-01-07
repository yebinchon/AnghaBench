
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct mtk_mdp_ctx {int m2m_ctx; } ;


 int to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_m2m_buf_queue (int ,int ) ;
 struct mtk_mdp_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void mtk_mdp_m2m_buf_queue(struct vb2_buffer *vb)
{
 struct mtk_mdp_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);

 v4l2_m2m_buf_queue(ctx->m2m_ctx, to_vb2_v4l2_buffer(vb));
}
