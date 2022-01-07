
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct TYPE_3__ {int (* bm_swap ) (struct mtd_info*,int *,int) ;} ;
struct mtk_nfc_nand_chip {TYPE_1__ bad_mark; } ;
struct TYPE_4__ {int mode; int op; } ;
struct mtk_nfc {int ecc; int * buffer; TYPE_2__ ecc_cfg; } ;
struct mtd_info {size_t writesize; size_t oobsize; } ;


 int CNFG_AUTO_FMT_EN ;
 int CNFG_HW_ECC_EN ;
 int ECC_ENCODE ;
 int ECC_NFI_MODE ;
 int NFI_CNFG ;
 int memcpy (int *,int const*,size_t) ;
 int mtk_ecc_disable (int ) ;
 int mtk_ecc_enable (int ,TYPE_2__*) ;
 int mtk_nfc_do_write_page (struct mtd_info*,struct nand_chip*,int const*,int,size_t) ;
 int mtk_nfc_write_fdm (struct nand_chip*) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 int nfi_readw (struct mtk_nfc*,int ) ;
 int nfi_writew (struct mtk_nfc*,int,int ) ;
 int stub1 (struct mtd_info*,int *,int) ;
 struct mtk_nfc_nand_chip* to_mtk_nand (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
         const u8 *buf, int page, int raw)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 struct mtk_nfc_nand_chip *mtk_nand = to_mtk_nand(chip);
 size_t len;
 const u8 *bufpoi;
 u32 reg;
 int ret;

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);

 if (!raw) {

  reg = nfi_readw(nfc, NFI_CNFG) | CNFG_AUTO_FMT_EN;
  nfi_writew(nfc, reg | CNFG_HW_ECC_EN, NFI_CNFG);

  nfc->ecc_cfg.op = ECC_ENCODE;
  nfc->ecc_cfg.mode = ECC_NFI_MODE;
  ret = mtk_ecc_enable(nfc->ecc, &nfc->ecc_cfg);
  if (ret) {

   reg = nfi_readw(nfc, NFI_CNFG);
   reg &= ~(CNFG_AUTO_FMT_EN | CNFG_HW_ECC_EN);
   nfi_writew(nfc, reg, NFI_CNFG);

   return ret;
  }

  memcpy(nfc->buffer, buf, mtd->writesize);
  mtk_nand->bad_mark.bm_swap(mtd, nfc->buffer, raw);
  bufpoi = nfc->buffer;


  mtk_nfc_write_fdm(chip);
 } else {
  bufpoi = buf;
 }

 len = mtd->writesize + (raw ? mtd->oobsize : 0);
 ret = mtk_nfc_do_write_page(mtd, chip, bufpoi, page, len);

 if (!raw)
  mtk_ecc_disable(nfc->ecc);

 if (ret)
  return ret;

 return nand_prog_page_end_op(chip);
}
