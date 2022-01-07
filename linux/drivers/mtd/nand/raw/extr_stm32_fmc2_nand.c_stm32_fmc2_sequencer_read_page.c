
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct stm32_fmc2_nfc {int dummy; } ;
struct TYPE_2__ {int (* correct ) (struct nand_chip*,int *,int *,int *) ;int total; int * code_buf; int * calc_buf; } ;
struct nand_chip {TYPE_1__ ecc; int oob_poi; int cur_cs; int controller; } ;
struct mtd_info {int oobsize; int writesize; } ;


 scalar_t__ likely (int) ;
 int mtd_ooblayout_get_eccbytes (struct mtd_info*,int *,int ,int ,int ) ;
 int nand_change_read_column_op (struct nand_chip*,int ,int ,int ,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stm32_fmc2_get_mapping_status (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_rw_page_init (struct nand_chip*,int,int ,int) ;
 int stm32_fmc2_select_chip (struct nand_chip*,int ) ;
 int stm32_fmc2_xfer (struct nand_chip*,int *,int ,int) ;
 int stub1 (struct nand_chip*,int *,int *,int *) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;

__attribute__((used)) static int stm32_fmc2_sequencer_read_page(struct nand_chip *chip, u8 *buf,
       int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);
 u8 *ecc_calc = chip->ecc.calc_buf;
 u8 *ecc_code = chip->ecc.code_buf;
 u16 sta_map;
 int ret;


 ret = stm32_fmc2_select_chip(chip, chip->cur_cs);
 if (ret)
  return ret;


 stm32_fmc2_rw_page_init(chip, page, 0, 0);


 ret = stm32_fmc2_xfer(chip, buf, 0, 0);
 if (ret)
  return ret;

 sta_map = stm32_fmc2_get_mapping_status(fmc2);


 if (likely(!sta_map)) {
  if (oob_required)
   return nand_change_read_column_op(chip, mtd->writesize,
         chip->oob_poi,
         mtd->oobsize, 0);

  return 0;
 }


 ret = nand_change_read_column_op(chip, mtd->writesize,
      chip->oob_poi, mtd->oobsize, 0);
 if (ret)
  return ret;

 ret = mtd_ooblayout_get_eccbytes(mtd, ecc_code, chip->oob_poi, 0,
      chip->ecc.total);
 if (ret)
  return ret;


 return chip->ecc.correct(chip, buf, ecc_code, ecc_calc);
}
