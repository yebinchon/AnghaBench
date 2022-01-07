
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sunxi_nfc {int dmac; scalar_t__ regs; } ;
struct scatterlist {int dummy; } ;
struct nand_ecc_ctrl {int steps; int bytes; int size; } ;
struct nand_chip {int options; int * oob_poi; int cur_cs; struct nand_ecc_ctrl ecc; int controller; } ;


 int DMA_TO_DEVICE ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_RNDIN ;
 int NAND_NEED_SCRAMBLING ;
 int NFC_ACCESS_DIR ;
 int NFC_CMD_INT_FLAG ;
 int NFC_DATA_SWAP_METHOD ;
 int NFC_DATA_TRANS ;
 int NFC_PAGE_OP ;
 scalar_t__ NFC_REG_CMD ;
 scalar_t__ NFC_REG_WCMD_SET ;
 int dma_async_issue_pending (int ) ;
 int dmaengine_terminate_all (int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 int sunxi_nfc_dma_op_cleanup (struct sunxi_nfc*,int ,struct scatterlist*) ;
 int sunxi_nfc_dma_op_prepare (struct sunxi_nfc*,int const*,int ,int,int ,struct scatterlist*) ;
 int sunxi_nfc_hw_ecc_disable (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_enable (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_set_prot_oob_bytes (struct nand_chip*,int const*,int,int,int) ;
 int sunxi_nfc_hw_ecc_write_extra_oob (struct nand_chip*,int *,int *,int) ;
 int sunxi_nfc_hw_ecc_write_page (struct nand_chip*,int const*,int,int) ;
 int sunxi_nfc_randomizer_config (struct nand_chip*,int,int) ;
 int sunxi_nfc_randomizer_disable (struct nand_chip*) ;
 int sunxi_nfc_randomizer_enable (struct nand_chip*) ;
 int sunxi_nfc_select_chip (struct nand_chip*,int ) ;
 int sunxi_nfc_wait_cmd_fifo_empty (struct sunxi_nfc*) ;
 int sunxi_nfc_wait_events (struct sunxi_nfc*,int ,int,int ) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_write_page_dma(struct nand_chip *nand,
        const u8 *buf,
        int oob_required,
        int page)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 struct scatterlist sg;
 int ret, i;

 sunxi_nfc_select_chip(nand, nand->cur_cs);

 ret = sunxi_nfc_wait_cmd_fifo_empty(nfc);
 if (ret)
  return ret;

 ret = sunxi_nfc_dma_op_prepare(nfc, buf, ecc->size, ecc->steps,
           DMA_TO_DEVICE, &sg);
 if (ret)
  goto pio_fallback;

 for (i = 0; i < ecc->steps; i++) {
  const u8 *oob = nand->oob_poi + (i * (ecc->bytes + 4));

  sunxi_nfc_hw_ecc_set_prot_oob_bytes(nand, oob, i, !i, page);
 }

 nand_prog_page_begin_op(nand, page, 0, ((void*)0), 0);

 sunxi_nfc_hw_ecc_enable(nand);
 sunxi_nfc_randomizer_config(nand, page, 0);
 sunxi_nfc_randomizer_enable(nand);

 writel((NAND_CMD_RNDIN << 8) | NAND_CMD_PAGEPROG,
        nfc->regs + NFC_REG_WCMD_SET);

 dma_async_issue_pending(nfc->dmac);

 writel(NFC_PAGE_OP | NFC_DATA_SWAP_METHOD |
        NFC_DATA_TRANS | NFC_ACCESS_DIR,
        nfc->regs + NFC_REG_CMD);

 ret = sunxi_nfc_wait_events(nfc, NFC_CMD_INT_FLAG, 0, 0);
 if (ret)
  dmaengine_terminate_all(nfc->dmac);

 sunxi_nfc_randomizer_disable(nand);
 sunxi_nfc_hw_ecc_disable(nand);

 sunxi_nfc_dma_op_cleanup(nfc, DMA_TO_DEVICE, &sg);

 if (ret)
  return ret;

 if (oob_required || (nand->options & NAND_NEED_SCRAMBLING))

  sunxi_nfc_hw_ecc_write_extra_oob(nand, nand->oob_poi,
       ((void*)0), page);

 return nand_prog_page_end_op(nand);

pio_fallback:
 return sunxi_nfc_hw_ecc_write_page(nand, buf, oob_required, page);
}
