
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int steps; } ;
struct nand_chip {int options; TYPE_1__ ecc; int cur_cs; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct meson_nfc_nand_chip {int info_buf; int data_buf; } ;
struct meson_nfc {int dummy; } ;


 int DIRREAD ;
 int DMA_FROM_DEVICE ;
 int NAND_NEED_SCRAMBLING ;
 int NFC_CMD_SCRAMBLER_DISABLE ;
 int NFC_CMD_SCRAMBLER_ENABLE ;
 int PER_INFO_BYTE ;
 int meson_nfc_check_ecc_pages_valid (struct meson_nfc*,struct nand_chip*,int) ;
 int meson_nfc_cmd_access (struct nand_chip*,int,int ,int ) ;
 int meson_nfc_cmd_seed (struct meson_nfc*,int) ;
 int meson_nfc_dma_buffer_release (struct nand_chip*,int,int,int ) ;
 int meson_nfc_dma_buffer_setup (struct nand_chip*,int ,int,int ,int,int ) ;
 int meson_nfc_rw_cmd_prepare_and_execute (struct nand_chip*,int,int ) ;
 int meson_nfc_select_chip (struct nand_chip*,int ) ;
 int meson_nfc_wait_dma_finish (struct meson_nfc*) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;

__attribute__((used)) static int meson_nfc_read_page_sub(struct nand_chip *nand,
       int page, int raw)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 int data_len, info_len;
 int ret;

 meson_nfc_select_chip(nand, nand->cur_cs);

 data_len = mtd->writesize + mtd->oobsize;
 info_len = nand->ecc.steps * PER_INFO_BYTE;

 ret = meson_nfc_rw_cmd_prepare_and_execute(nand, page, DIRREAD);
 if (ret)
  return ret;

 ret = meson_nfc_dma_buffer_setup(nand, meson_chip->data_buf,
      data_len, meson_chip->info_buf,
      info_len, DMA_FROM_DEVICE);
 if (ret)
  return ret;

 if (nand->options & NAND_NEED_SCRAMBLING) {
  meson_nfc_cmd_seed(nfc, page);
  meson_nfc_cmd_access(nand, raw, DIRREAD,
         NFC_CMD_SCRAMBLER_ENABLE);
 } else {
  meson_nfc_cmd_access(nand, raw, DIRREAD,
         NFC_CMD_SCRAMBLER_DISABLE);
 }

 ret = meson_nfc_wait_dma_finish(nfc);
 meson_nfc_check_ecc_pages_valid(nfc, nand, raw);

 meson_nfc_dma_buffer_release(nand, data_len, info_len, DMA_FROM_DEVICE);

 return ret;
}
