
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_memory_organization {int pagesize; int oobsize; } ;
struct TYPE_2__ {int size; int bytes; int strength; } ;
struct nand_chip {int page_shift; int phys_erase_shift; int bbt_erase_shift; int chip_shift; int pagemask; TYPE_1__ ecc; int base; } ;
struct mtd_info {int size; int erasesize; int writesize; int oobsize; } ;
struct denali_controller {int devs_per_cs; int oob_skip_bytes; int dev; scalar_t__ reg; } ;


 scalar_t__ DEVICES_CONNECTED ;
 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_multidev_fixup(struct nand_chip *chip)
{
 struct denali_controller *denali = to_denali_controller(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;

 memorg = nanddev_get_memorg(&chip->base);
 denali->devs_per_cs = ioread32(denali->reg + DEVICES_CONNECTED);





 if (denali->devs_per_cs == 0) {
  denali->devs_per_cs = 1;
  iowrite32(1, denali->reg + DEVICES_CONNECTED);
 }

 if (denali->devs_per_cs == 1)
  return 0;

 if (denali->devs_per_cs != 2) {
  dev_err(denali->dev, "unsupported number of devices %d\n",
   denali->devs_per_cs);
  return -EINVAL;
 }


 memorg->pagesize <<= 1;
 memorg->oobsize <<= 1;
 mtd->size <<= 1;
 mtd->erasesize <<= 1;
 mtd->writesize <<= 1;
 mtd->oobsize <<= 1;
 chip->page_shift += 1;
 chip->phys_erase_shift += 1;
 chip->bbt_erase_shift += 1;
 chip->chip_shift += 1;
 chip->pagemask <<= 1;
 chip->ecc.size <<= 1;
 chip->ecc.bytes <<= 1;
 chip->ecc.strength <<= 1;
 denali->oob_skip_bytes <<= 1;

 return 0;
}
