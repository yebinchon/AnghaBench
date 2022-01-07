
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int steps; int size; } ;
struct nand_chip {TYPE_2__ ecc; } ;
struct TYPE_3__ {int sec; int (* bm_swap ) (struct mtd_info*,int ,int) ;} ;
struct mtk_nfc_fdm {int reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_1__ bad_mark; struct mtk_nfc_fdm fdm; } ;
struct mtk_nfc {int buffer; } ;
struct mtd_info {scalar_t__ writesize; scalar_t__ oobsize; } ;


 int data_ptr (struct nand_chip*,int *,int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int,scalar_t__) ;
 int mtk_data_ptr (struct nand_chip*,int) ;
 int mtk_nfc_read_subpage (struct mtd_info*,struct nand_chip*,int ,scalar_t__,int ,int,int) ;
 int mtk_oob_ptr (struct nand_chip*,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int oob_ptr (struct nand_chip*,int) ;
 int stub1 (struct mtd_info*,int ,int) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_read_page_raw(struct nand_chip *chip, u8 *buf, int oob_on,
     int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_fdm *fdm = &mtk_nand->fdm;
 int i, ret;

 memset(nfc->buffer, 0xff, mtd->writesize + mtd->oobsize);
 ret = mtk_nfc_read_subpage(mtd, chip, 0, mtd->writesize, nfc->buffer,
       page, 1);
 if (ret < 0)
  return ret;

 for (i = 0; i < chip->ecc.steps; i++) {
  memcpy(oob_ptr(chip, i), mtk_oob_ptr(chip, i), fdm->reg_size);

  if (i == mtk_nand->bad_mark.sec)
   mtk_nand->bad_mark.bm_swap(mtd, nfc->buffer, 1);

  if (buf)
   memcpy(data_ptr(chip, buf, i), mtk_data_ptr(chip, i),
          chip->ecc.size);
 }

 return ret;
}
