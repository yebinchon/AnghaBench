
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int controller; } ;
struct marvell_nfc {scalar_t__ regs; scalar_t__ use_dma; scalar_t__ dma_chan; int dev; } ;


 scalar_t__ NDCR ;
 int NDCR_DMA_EN ;
 scalar_t__ NDSR ;
 int POLL_PERIOD ;
 int POLL_TIMEOUT ;
 int dev_err (int ,char*,char const*,int) ;
 int dmaengine_terminate_all (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int ,int ) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int marvell_nfc_end_cmd(struct nand_chip *chip, int flag,
          const char *label)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 u32 val;
 int ret;

 ret = readl_relaxed_poll_timeout(nfc->regs + NDSR, val,
      val & flag,
      POLL_PERIOD, POLL_TIMEOUT);

 if (ret) {
  dev_err(nfc->dev, "Timeout on %s (NDSR: 0x%08x)\n",
   label, val);
  if (nfc->dma_chan)
   dmaengine_terminate_all(nfc->dma_chan);
  return ret;
 }





 if (nfc->use_dma && (readl_relaxed(nfc->regs + NDCR) & NDCR_DMA_EN))
  return 0;

 writel_relaxed(flag, nfc->regs + NDSR);

 return 0;
}
