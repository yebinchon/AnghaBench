
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct fsl_elbc_mtd {int chip; } ;
struct fsl_elbc_fcm_ctrl {int counter; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;


 struct fsl_elbc_mtd* dev_get_drvdata (int *) ;
 int fsl_elbc_chip_remove (struct fsl_elbc_mtd*) ;
 int fsl_elbc_nand_mutex ;
 TYPE_1__* fsl_lbc_ctrl_dev ;
 int kfree (struct fsl_elbc_fcm_ctrl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nand_release (int *) ;

__attribute__((used)) static int fsl_elbc_nand_remove(struct platform_device *pdev)
{
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = fsl_lbc_ctrl_dev->nand;
 struct fsl_elbc_mtd *priv = dev_get_drvdata(&pdev->dev);

 nand_release(&priv->chip);
 fsl_elbc_chip_remove(priv);

 mutex_lock(&fsl_elbc_nand_mutex);
 elbc_fcm_ctrl->counter--;
 if (!elbc_fcm_ctrl->counter) {
  fsl_lbc_ctrl_dev->nand = ((void*)0);
  kfree(elbc_fcm_ctrl);
 }
 mutex_unlock(&fsl_elbc_nand_mutex);

 return 0;

}
