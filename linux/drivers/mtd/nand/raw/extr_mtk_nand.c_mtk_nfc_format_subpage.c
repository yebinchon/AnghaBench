
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int size; int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_4__ {int sec; int (* bm_swap ) (struct mtd_info*,int ,int) ;} ;
struct mtk_nfc_fdm {int reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_2__ bad_mark; struct mtk_nfc_fdm fdm; } ;
struct mtk_nfc {int buffer; } ;
struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; } ;


 int DIV_ROUND_UP (int,int) ;
 int data_ptr (struct nand_chip*,int const*,int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int,scalar_t__) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 int mtk_data_ptr (struct nand_chip*,int) ;
 int mtk_nfc_sector_encode (struct nand_chip*,int ) ;
 int mtk_oob_ptr (struct nand_chip*,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int oob_ptr (struct nand_chip*,int) ;
 int stub1 (struct mtd_info*,int ,int) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_format_subpage(struct mtd_info *mtd, u32 offset,
      u32 len, const u8 *buf)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_fdm *fdm = &mtk_nand->fdm;
 u32 start, end;
 int i, ret;

 start = offset / chip->ecc.size;
 end = DIV_ROUND_UP(offset + len, chip->ecc.size);

 memset(nfc->buffer, 0xff, mtd->writesize + mtd->oobsize);
 for (i = 0; i < chip->ecc.steps; i++) {
  memcpy(mtk_data_ptr(chip, i), data_ptr(chip, buf, i),
         chip->ecc.size);

  if (start > i || i >= end)
   continue;

  if (i == mtk_nand->bad_mark.sec)
   mtk_nand->bad_mark.bm_swap(mtd, nfc->buffer, 1);

  memcpy(mtk_oob_ptr(chip, i), oob_ptr(chip, i), fdm->reg_size);


  ret = mtk_nfc_sector_encode(chip, mtk_data_ptr(chip, i));
  if (ret < 0)
   return ret;
 }

 return 0;
}
