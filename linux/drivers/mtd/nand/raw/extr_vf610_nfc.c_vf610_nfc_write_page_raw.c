
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vf610_nfc {int data_access; } ;
struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int const*,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nand_write_data_op (struct nand_chip*,int ,int ,int) ;

__attribute__((used)) static int vf610_nfc_write_page_raw(struct nand_chip *chip, const u8 *buf,
        int oob_required, int page)
{
 struct vf610_nfc *nfc = chip_to_nfc(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;

 nfc->data_access = 1;
 ret = nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 if (!ret && oob_required)
  ret = nand_write_data_op(chip, chip->oob_poi, mtd->oobsize,
      0);
 nfc->data_access = 0;

 if (ret)
  return ret;

 return nand_prog_page_end_op(chip);
}
