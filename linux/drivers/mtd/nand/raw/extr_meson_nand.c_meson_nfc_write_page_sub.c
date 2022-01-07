
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nand_sdr_timings {int tPROG_max; } ;
struct TYPE_3__ {int steps; } ;
struct nand_chip {int options; TYPE_1__ ecc; int cur_cs; int data_interface; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct meson_nfc_nand_chip {int info_buf; int data_buf; } ;
struct TYPE_4__ {int chip_select; } ;
struct meson_nfc {scalar_t__ reg_base; TYPE_2__ param; } ;


 int DIRWRITE ;
 int DMA_TO_DEVICE ;
 int NAND_CMD_PAGEPROG ;
 int NAND_NEED_SCRAMBLING ;
 int NFC_CMD_CLE ;
 int NFC_CMD_SCRAMBLER_DISABLE ;
 int NFC_CMD_SCRAMBLER_ENABLE ;
 scalar_t__ NFC_REG_CMD ;
 int PER_INFO_BYTE ;
 int PSEC_TO_MSEC (int ) ;
 int meson_nfc_cmd_access (struct nand_chip*,int,int ,int ) ;
 int meson_nfc_cmd_seed (struct meson_nfc*,int) ;
 int meson_nfc_dma_buffer_release (struct nand_chip*,int,int,int ) ;
 int meson_nfc_dma_buffer_setup (struct nand_chip*,int ,int,int ,int,int ) ;
 int meson_nfc_queue_rb (struct meson_nfc*,int ) ;
 int meson_nfc_rw_cmd_prepare_and_execute (struct nand_chip*,int,int ) ;
 int meson_nfc_select_chip (struct nand_chip*,int ) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct meson_nfc_nand_chip* to_meson_nand (struct nand_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int meson_nfc_write_page_sub(struct nand_chip *nand,
        int page, int raw)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 const struct nand_sdr_timings *sdr =
  nand_get_sdr_timings(&nand->data_interface);
 struct meson_nfc_nand_chip *meson_chip = to_meson_nand(nand);
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 int data_len, info_len;
 u32 cmd;
 int ret;

 meson_nfc_select_chip(nand, nand->cur_cs);

 data_len = mtd->writesize + mtd->oobsize;
 info_len = nand->ecc.steps * PER_INFO_BYTE;

 ret = meson_nfc_rw_cmd_prepare_and_execute(nand, page, DIRWRITE);
 if (ret)
  return ret;

 ret = meson_nfc_dma_buffer_setup(nand, meson_chip->data_buf,
      data_len, meson_chip->info_buf,
      info_len, DMA_TO_DEVICE);
 if (ret)
  return ret;

 if (nand->options & NAND_NEED_SCRAMBLING) {
  meson_nfc_cmd_seed(nfc, page);
  meson_nfc_cmd_access(nand, raw, DIRWRITE,
         NFC_CMD_SCRAMBLER_ENABLE);
 } else {
  meson_nfc_cmd_access(nand, raw, DIRWRITE,
         NFC_CMD_SCRAMBLER_DISABLE);
 }

 cmd = nfc->param.chip_select | NFC_CMD_CLE | NAND_CMD_PAGEPROG;
 writel(cmd, nfc->reg_base + NFC_REG_CMD);
 meson_nfc_queue_rb(nfc, PSEC_TO_MSEC(sdr->tPROG_max));

 meson_nfc_dma_buffer_release(nand, data_len, info_len, DMA_TO_DEVICE);

 return ret;
}
