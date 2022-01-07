
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct atmel_nand {int node; struct nand_chip base; } ;


 int list_del (int *) ;
 int mtd_device_unregister (struct mtd_info*) ;
 int nand_cleanup (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int atmel_nand_controller_remove_nand(struct atmel_nand *nand)
{
 struct nand_chip *chip = &nand->base;
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 ret = mtd_device_unregister(mtd);
 if (ret)
  return ret;

 nand_cleanup(chip);
 list_del(&nand->node);

 return 0;
}
