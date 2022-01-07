
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct sunxi_nfc {scalar_t__ regs; int dmac; } ;
struct scatterlist {int dummy; } ;
struct nand_ecc_ctrl {int size; int bytes; int strength; } ;
struct nand_chip {int options; int * oob_poi; struct nand_ecc_ctrl ecc; int controller; } ;
struct mtd_info {int writesize; } ;


 int DMA_FROM_DEVICE ;
 int NAND_CMD_READSTART ;
 int NAND_CMD_RNDOUT ;
 int NAND_CMD_RNDOUTSTART ;
 int NAND_NEED_SCRAMBLING ;
 int NFC_CMD_INT_FLAG ;
 int NFC_DATA_SWAP_METHOD ;
 int NFC_DATA_TRANS ;
 int NFC_ECC_ERR (int) ;
 int NFC_ECC_ERR_MSK ;
 int NFC_PAGE_OP ;
 scalar_t__ NFC_REG_CMD ;
 scalar_t__ NFC_REG_ECC_ST ;
 scalar_t__ NFC_REG_RCMD_SET ;
 int dma_async_issue_pending (int ) ;
 int dmaengine_terminate_all (int ) ;
 int nand_change_read_column_op (struct nand_chip*,int,int *,int,int) ;
 int nand_check_erased_ecc_chunk (int *,int,int *,int,int *,int ,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int readl (scalar_t__) ;
 int sunxi_nfc_dma_op_cleanup (struct sunxi_nfc*,int ,struct scatterlist*) ;
 int sunxi_nfc_dma_op_prepare (struct sunxi_nfc*,int *,int,int,int ,struct scatterlist*) ;
 int sunxi_nfc_hw_ecc_correct (struct nand_chip*,int *,int *,int,int,int*) ;
 int sunxi_nfc_hw_ecc_disable (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_enable (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_get_prot_oob_bytes (struct nand_chip*,int *,int,int,int) ;
 int sunxi_nfc_hw_ecc_read_extra_oob (struct nand_chip*,int *,int *,int,int) ;
 int sunxi_nfc_hw_ecc_update_stats (struct nand_chip*,unsigned int*,int) ;
 int sunxi_nfc_randomizer_config (struct nand_chip*,int,int) ;
 int sunxi_nfc_randomizer_disable (struct nand_chip*) ;
 int sunxi_nfc_randomizer_enable (struct nand_chip*) ;
 int sunxi_nfc_wait_cmd_fifo_empty (struct sunxi_nfc*) ;
 int sunxi_nfc_wait_events (struct sunxi_nfc*,int ,int,int ) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_read_chunks_dma(struct nand_chip *nand, uint8_t *buf,
         int oob_required, int page,
         int nchunks)
{
 bool randomized = nand->options & NAND_NEED_SCRAMBLING;
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 unsigned int max_bitflips = 0;
 int ret, i, raw_mode = 0;
 struct scatterlist sg;
 u32 status;

 ret = sunxi_nfc_wait_cmd_fifo_empty(nfc);
 if (ret)
  return ret;

 ret = sunxi_nfc_dma_op_prepare(nfc, buf, ecc->size, nchunks,
           DMA_FROM_DEVICE, &sg);
 if (ret)
  return ret;

 sunxi_nfc_hw_ecc_enable(nand);
 sunxi_nfc_randomizer_config(nand, page, 0);
 sunxi_nfc_randomizer_enable(nand);

 writel((NAND_CMD_RNDOUTSTART << 16) | (NAND_CMD_RNDOUT << 8) |
        NAND_CMD_READSTART, nfc->regs + NFC_REG_RCMD_SET);

 dma_async_issue_pending(nfc->dmac);

 writel(NFC_PAGE_OP | NFC_DATA_SWAP_METHOD | NFC_DATA_TRANS,
        nfc->regs + NFC_REG_CMD);

 ret = sunxi_nfc_wait_events(nfc, NFC_CMD_INT_FLAG, 0, 0);
 if (ret)
  dmaengine_terminate_all(nfc->dmac);

 sunxi_nfc_randomizer_disable(nand);
 sunxi_nfc_hw_ecc_disable(nand);

 sunxi_nfc_dma_op_cleanup(nfc, DMA_FROM_DEVICE, &sg);

 if (ret)
  return ret;

 status = readl(nfc->regs + NFC_REG_ECC_ST);

 for (i = 0; i < nchunks; i++) {
  int data_off = i * ecc->size;
  int oob_off = i * (ecc->bytes + 4);
  u8 *data = buf + data_off;
  u8 *oob = nand->oob_poi + oob_off;
  bool erased;

  ret = sunxi_nfc_hw_ecc_correct(nand, randomized ? data : ((void*)0),
            oob_required ? oob : ((void*)0),
            i, status, &erased);


  if (ret < 0)
   continue;

  if (oob_required && !erased) {

   nand_change_read_column_op(nand,
         mtd->writesize + oob_off,
         oob, ecc->bytes + 4, 0);

   sunxi_nfc_hw_ecc_get_prot_oob_bytes(nand, oob, i,
           !i, page);
  }

  if (erased)
   raw_mode = 1;

  sunxi_nfc_hw_ecc_update_stats(nand, &max_bitflips, ret);
 }

 if (status & NFC_ECC_ERR_MSK) {
  for (i = 0; i < nchunks; i++) {
   int data_off = i * ecc->size;
   int oob_off = i * (ecc->bytes + 4);
   u8 *data = buf + data_off;
   u8 *oob = nand->oob_poi + oob_off;

   if (!(status & NFC_ECC_ERR(i)))
    continue;






   if (randomized)
    nand_change_read_column_op(nand, data_off,
          data, ecc->size,
          0);


   nand_change_read_column_op(nand,
         mtd->writesize + oob_off,
         oob, ecc->bytes + 4, 0);

   ret = nand_check_erased_ecc_chunk(data, ecc->size,
         oob, ecc->bytes + 4,
         ((void*)0), 0,
         ecc->strength);
   if (ret >= 0)
    raw_mode = 1;

   sunxi_nfc_hw_ecc_update_stats(nand, &max_bitflips, ret);
  }
 }

 if (oob_required)
  sunxi_nfc_hw_ecc_read_extra_oob(nand, nand->oob_poi,
      ((void*)0), !raw_mode,
      page);

 return max_bitflips;
}
