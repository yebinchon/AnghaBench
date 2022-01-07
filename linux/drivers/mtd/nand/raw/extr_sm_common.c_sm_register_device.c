
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_flash_dev {int dummy; } ;
struct TYPE_3__ {int * ops; } ;
struct TYPE_4__ {TYPE_1__ dummy_controller; } ;
struct nand_chip {TYPE_2__ legacy; int options; } ;
struct mtd_info {int dummy; } ;


 int NAND_SKIP_BBTSCAN ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_scan_with_ids (struct nand_chip*,int,struct nand_flash_dev*) ;
 struct nand_flash_dev* nand_smartmedia_flash_ids ;
 struct nand_flash_dev* nand_xd_flash_ids ;
 int sm_controller_ops ;

int sm_register_device(struct mtd_info *mtd, int smartmedia)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct nand_flash_dev *flash_ids;
 int ret;

 chip->options |= NAND_SKIP_BBTSCAN;


 chip->legacy.dummy_controller.ops = &sm_controller_ops;
 flash_ids = smartmedia ? nand_smartmedia_flash_ids : nand_xd_flash_ids;
 ret = nand_scan_with_ids(chip, 1, flash_ids);
 if (ret)
  return ret;

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret)
  nand_cleanup(chip);

 return ret;
}
