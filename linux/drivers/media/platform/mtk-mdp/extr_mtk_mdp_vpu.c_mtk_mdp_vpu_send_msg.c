
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_mdp_vpu {int pdev; } ;
struct mtk_mdp_ctx {TYPE_2__* mdp_dev; int id; } ;
typedef enum ipi_id { ____Placeholder_ipi_id } ipi_id ;
struct TYPE_4__ {int vpulock; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;
 int mtk_mdp_dbg (int,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vpu_ipi_send (int ,int,void*,int) ;
 struct mtk_mdp_ctx* vpu_to_ctx (struct mtk_mdp_vpu*) ;

__attribute__((used)) static int mtk_mdp_vpu_send_msg(void *msg, int len, struct mtk_mdp_vpu *vpu,
    int id)
{
 struct mtk_mdp_ctx *ctx = vpu_to_ctx(vpu);
 int err;

 if (!vpu->pdev) {
  mtk_mdp_dbg(1, "[%d]:vpu pdev is NULL", ctx->id);
  return -EINVAL;
 }

 mutex_lock(&ctx->mdp_dev->vpulock);
 err = vpu_ipi_send(vpu->pdev, (enum ipi_id)id, msg, len);
 if (err)
  dev_err(&ctx->mdp_dev->pdev->dev,
   "vpu_ipi_send fail status %d\n", err);
 mutex_unlock(&ctx->mdp_dev->vpulock);

 return err;
}
