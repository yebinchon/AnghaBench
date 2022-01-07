
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_mdp_dev {int lock; TYPE_1__* pdev; int ctx_num; int job_wq; } ;
struct mtk_mdp_ctx {int id; int list; int vpu; int fh; int ctrl_handler; int m2m_ctx; struct mtk_mdp_dev* mdp_dev; } ;
struct file {int private_data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_name (int *) ;
 struct mtk_mdp_ctx* fh_to_ctx (int ) ;
 int flush_workqueue (int ) ;
 int kfree (struct mtk_mdp_ctx*) ;
 int list_del_init (int *) ;
 int mtk_mdp_dbg (int ,char*,int ,int ) ;
 int mtk_mdp_vpu_deinit (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_m2m_ctx_release (int ) ;

__attribute__((used)) static int mtk_mdp_m2m_release(struct file *file)
{
 struct mtk_mdp_ctx *ctx = fh_to_ctx(file->private_data);
 struct mtk_mdp_dev *mdp = ctx->mdp_dev;

 flush_workqueue(mdp->job_wq);
 mutex_lock(&mdp->lock);
 v4l2_m2m_ctx_release(ctx->m2m_ctx);
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 mtk_mdp_vpu_deinit(&ctx->vpu);
 mdp->ctx_num--;
 list_del_init(&ctx->list);

 mtk_mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);

 mutex_unlock(&mdp->lock);
 kfree(ctx);

 return 0;
}
