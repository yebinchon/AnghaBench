
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ oob_poi; } ;
struct mtd_oob_region {int length; scalar_t__ offset; } ;
struct mtd_info {scalar_t__ writesize; } ;


 int EPERM ;
 int mtd_ooblayout_free (struct mtd_info*,int ,struct mtd_oob_region*) ;
 int nand_is_slc (struct nand_chip*) ;
 int nand_prog_page_op (struct nand_chip*,int,scalar_t__,scalar_t__,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_ecc_write_oob(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mtd_oob_region of = { };


 mtd_ooblayout_free(mtd, 0, &of);
 if (!of.length)
  return -EPERM;

 if (!nand_is_slc(chip))
  return -EPERM;

 return nand_prog_page_op(chip, page, mtd->writesize + of.offset,
     chip->oob_poi + of.offset, of.length);
}
