
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int name; } ;
struct fsl_ifc_mtd {size_t bank; scalar_t__ vbase; int chip; } ;
struct TYPE_2__ {int ** chips; } ;


 TYPE_1__* ifc_nand_ctrl ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int fsl_ifc_chip_remove(struct fsl_ifc_mtd *priv)
{
 struct mtd_info *mtd = nand_to_mtd(&priv->chip);

 kfree(mtd->name);

 if (priv->vbase)
  iounmap(priv->vbase);

 ifc_nand_ctrl->chips[priv->bank] = ((void*)0);

 return 0;
}
