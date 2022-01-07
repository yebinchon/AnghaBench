
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct atmel_nand_controller {int chips; int dev; TYPE_2__* caps; } ;
struct atmel_nand {int node; int numcs; scalar_t__ cdgpio; struct nand_chip base; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* nand_init ) (struct atmel_nand_controller*,struct atmel_nand*) ;} ;


 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 scalar_t__ gpiod_get_value (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct atmel_nand_controller*,struct atmel_nand*) ;

__attribute__((used)) static int
atmel_nand_controller_add_nand(struct atmel_nand_controller *nc,
          struct atmel_nand *nand)
{
 struct nand_chip *chip = &nand->base;
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;


 if (nand->cdgpio && gpiod_get_value(nand->cdgpio)) {
  dev_info(nc->dev, "No SmartMedia card inserted.\n");
  return 0;
 }

 nc->caps->ops->nand_init(nc, nand);

 ret = nand_scan(chip, nand->numcs);
 if (ret) {
  dev_err(nc->dev, "NAND scan failed: %d\n", ret);
  return ret;
 }

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret) {
  dev_err(nc->dev, "Failed to register mtd device: %d\n", ret);
  nand_cleanup(chip);
  return ret;
 }

 list_add_tail(&nand->node, &nc->chips);

 return 0;
}
