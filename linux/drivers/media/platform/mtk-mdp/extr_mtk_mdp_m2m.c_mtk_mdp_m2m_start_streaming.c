
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {struct mtk_mdp_ctx* drv_priv; } ;
struct mtk_mdp_ctx {int id; TYPE_2__* mdp_dev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int mtk_mdp_dbg (int,char*,int ,int) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int mtk_mdp_m2m_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct mtk_mdp_ctx *ctx = q->drv_priv;
 int ret;

 ret = pm_runtime_get_sync(&ctx->mdp_dev->pdev->dev);
 if (ret < 0)
  mtk_mdp_dbg(1, "[%d] pm_runtime_get_sync failed:%d",
       ctx->id, ret);

 return 0;
}
