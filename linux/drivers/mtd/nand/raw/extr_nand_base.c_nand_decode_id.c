
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_memory_organization {int pages_per_eraseblock; int pagesize; int oobsize; int bits_per_cell; } ;
struct nand_flash_dev {int erasesize; int pagesize; } ;
struct nand_chip {int base; } ;
struct mtd_info {int erasesize; int writesize; int oobsize; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;

__attribute__((used)) static void nand_decode_id(struct nand_chip *chip, struct nand_flash_dev *type)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;

 memorg = nanddev_get_memorg(&chip->base);

 memorg->pages_per_eraseblock = type->erasesize / type->pagesize;
 mtd->erasesize = type->erasesize;
 memorg->pagesize = type->pagesize;
 mtd->writesize = memorg->pagesize;
 memorg->oobsize = memorg->pagesize / 32;
 mtd->oobsize = memorg->oobsize;


 memorg->bits_per_cell = 1;
}
