
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_nfc {int data_access; } ;
struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int ,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int vf610_nfc_write_oob(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct vf610_nfc *nfc = chip_to_nfc(chip);
 int ret;

 nfc->data_access = 1;
 ret = nand_prog_page_begin_op(chip, page, mtd->writesize,
          chip->oob_poi, mtd->oobsize);
 nfc->data_access = 0;

 if (ret)
  return ret;

 return nand_prog_page_end_op(chip);
}
