
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct fsl_ifc_mtd {int chip; } ;
struct TYPE_5__ {int * nand; } ;
struct TYPE_4__ {int counter; } ;


 struct fsl_ifc_mtd* dev_get_drvdata (int *) ;
 int fsl_ifc_chip_remove (struct fsl_ifc_mtd*) ;
 TYPE_3__* fsl_ifc_ctrl_dev ;
 int fsl_ifc_nand_mutex ;
 TYPE_1__* ifc_nand_ctrl ;
 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nand_release (int *) ;

__attribute__((used)) static int fsl_ifc_nand_remove(struct platform_device *dev)
{
 struct fsl_ifc_mtd *priv = dev_get_drvdata(&dev->dev);

 nand_release(&priv->chip);
 fsl_ifc_chip_remove(priv);

 mutex_lock(&fsl_ifc_nand_mutex);
 ifc_nand_ctrl->counter--;
 if (!ifc_nand_ctrl->counter) {
  fsl_ifc_ctrl_dev->nand = ((void*)0);
  kfree(ifc_nand_ctrl);
 }
 mutex_unlock(&fsl_ifc_nand_mutex);

 return 0;
}
