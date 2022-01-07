
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int type; struct mtk_mdp_ctx* drv_priv; } ;
struct vb2_buffer {int dummy; } ;
struct mtk_mdp_ctx {TYPE_2__* mdp_dev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int VB2_BUF_STATE_ERROR ;
 struct vb2_buffer* mtk_mdp_m2m_buf_remove (struct mtk_mdp_ctx*,int ) ;
 int pm_runtime_put (int *) ;
 int to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_m2m_buf_done (int ,int ) ;

__attribute__((used)) static void mtk_mdp_m2m_stop_streaming(struct vb2_queue *q)
{
 struct mtk_mdp_ctx *ctx = q->drv_priv;
 struct vb2_buffer *vb;

 vb = mtk_mdp_m2m_buf_remove(ctx, q->type);
 while (vb != ((void*)0)) {
  v4l2_m2m_buf_done(to_vb2_v4l2_buffer(vb), VB2_BUF_STATE_ERROR);
  vb = mtk_mdp_m2m_buf_remove(ctx, q->type);
 }

 pm_runtime_put(&ctx->mdp_dev->pdev->dev);
}
