
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtd_info {struct fsl_upm_nand* name; } ;
struct fsl_upm_nand {int mchip_count; scalar_t__* rnb_gpio; int chip; } ;


 struct fsl_upm_nand* dev_get_drvdata (int *) ;
 int gpio_free (scalar_t__) ;
 int kfree (struct fsl_upm_nand*) ;
 int nand_release (int *) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int fun_remove(struct platform_device *ofdev)
{
 struct fsl_upm_nand *fun = dev_get_drvdata(&ofdev->dev);
 struct mtd_info *mtd = nand_to_mtd(&fun->chip);
 int i;

 nand_release(&fun->chip);
 kfree(mtd->name);

 for (i = 0; i < fun->mchip_count; i++) {
  if (fun->rnb_gpio[i] < 0)
   break;
  gpio_free(fun->rnb_gpio[i]);
 }

 kfree(fun);

 return 0;
}
