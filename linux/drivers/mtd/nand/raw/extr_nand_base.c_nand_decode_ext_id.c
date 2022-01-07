
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_memory_organization {int pagesize; int oobsize; int pages_per_eraseblock; int bits_per_cell; } ;
struct TYPE_2__ {int* data; } ;
struct nand_chip {int options; int base; TYPE_1__ id; } ;
struct mtd_info {int writesize; int oobsize; int erasesize; } ;


 int NAND_BUSWIDTH_16 ;
 int nand_get_bits_per_cell (int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;

void nand_decode_ext_id(struct nand_chip *chip)
{
 struct nand_memory_organization *memorg;
 struct mtd_info *mtd = nand_to_mtd(chip);
 int extid;
 u8 *id_data = chip->id.data;

 memorg = nanddev_get_memorg(&chip->base);


 memorg->bits_per_cell = nand_get_bits_per_cell(id_data[2]);

 extid = id_data[3];


 memorg->pagesize = 1024 << (extid & 0x03);
 mtd->writesize = memorg->pagesize;
 extid >>= 2;

 memorg->oobsize = (8 << (extid & 0x01)) * (mtd->writesize >> 9);
 mtd->oobsize = memorg->oobsize;
 extid >>= 2;

 memorg->pages_per_eraseblock = ((64 * 1024) << (extid & 0x03)) /
           memorg->pagesize;
 mtd->erasesize = (64 * 1024) << (extid & 0x03);
 extid >>= 2;

 if (extid & 0x1)
  chip->options |= NAND_BUSWIDTH_16;
}
