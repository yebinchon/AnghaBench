
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int const*,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_data_op (struct nand_chip*,int ,int ,int) ;

int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
   int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 ret = nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 if (ret)
  return ret;

 if (oob_required) {
  ret = nand_write_data_op(chip, chip->oob_poi, mtd->oobsize,
      0);
  if (ret)
   return ret;
 }

 return nand_prog_page_end_op(chip);
}
