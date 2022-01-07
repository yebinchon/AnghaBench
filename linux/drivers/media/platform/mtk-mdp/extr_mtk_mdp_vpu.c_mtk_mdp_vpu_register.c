
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mtk_mdp_dev {TYPE_1__* pdev; int vpu_dev; } ;
struct TYPE_2__ {int dev; } ;


 int IPI_MDP ;
 int dev_err (int *,char*,int) ;
 int mtk_mdp_vpu_ipi_handler ;
 struct mtk_mdp_dev* platform_get_drvdata (struct platform_device*) ;
 int vpu_ipi_register (int ,int ,int ,char*,int *) ;

int mtk_mdp_vpu_register(struct platform_device *pdev)
{
 struct mtk_mdp_dev *mdp = platform_get_drvdata(pdev);
 int err;

 err = vpu_ipi_register(mdp->vpu_dev, IPI_MDP,
          mtk_mdp_vpu_ipi_handler, "mdp_vpu", ((void*)0));
 if (err)
  dev_err(&mdp->pdev->dev,
   "vpu_ipi_registration fail status=%d\n", err);

 return err;
}
