
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct fsl_upm_nand {size_t mchip_number; int dev; int * rnb_gpio; } ;


 int dev_vdbg (int ,char*) ;
 scalar_t__ gpio_get_value (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct fsl_upm_nand* to_fsl_upm_nand (int ) ;

__attribute__((used)) static int fun_chip_ready(struct nand_chip *chip)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(nand_to_mtd(chip));

 if (gpio_get_value(fun->rnb_gpio[fun->mchip_number]))
  return 1;

 dev_vdbg(fun->dev, "busy\n");
 return 0;
}
