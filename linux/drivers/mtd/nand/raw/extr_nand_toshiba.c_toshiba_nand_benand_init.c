
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int strength; int write_page_raw; int read_page_raw; int write_page; int read_subpage; int read_page; scalar_t__ bytes; } ;
struct nand_chip {int options; TYPE_1__ ecc; } ;
struct mtd_info {int dummy; } ;


 int NAND_SUBPAGE_READ ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 int nand_ooblayout_lp_ops ;
 int nand_read_page_raw_notsupp ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_page_raw ;
 int nand_write_page_raw_notsupp ;
 int toshiba_nand_read_page_benand ;
 int toshiba_nand_read_subpage_benand ;

__attribute__((used)) static void toshiba_nand_benand_init(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);







 chip->ecc.bytes = 0;
 chip->ecc.size = 512;
 chip->ecc.strength = 8;
 chip->ecc.read_page = toshiba_nand_read_page_benand;
 chip->ecc.read_subpage = toshiba_nand_read_subpage_benand;
 chip->ecc.write_page = nand_write_page_raw;
 chip->ecc.read_page_raw = nand_read_page_raw_notsupp;
 chip->ecc.write_page_raw = nand_write_page_raw_notsupp;

 chip->options |= NAND_SUBPAGE_READ;

 mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
}
