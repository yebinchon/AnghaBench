
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct fsl_elbc_mtd* name; } ;
struct fsl_elbc_mtd {size_t bank; scalar_t__ vbase; int chip; TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {int ** chips; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct fsl_elbc_mtd*) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int fsl_elbc_chip_remove(struct fsl_elbc_mtd *priv)
{
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;
 struct mtd_info *mtd = nand_to_mtd(&priv->chip);

 kfree(mtd->name);

 if (priv->vbase)
  iounmap(priv->vbase);

 elbc_fcm_ctrl->chips[priv->bank] = ((void*)0);
 kfree(priv);
 return 0;
}
