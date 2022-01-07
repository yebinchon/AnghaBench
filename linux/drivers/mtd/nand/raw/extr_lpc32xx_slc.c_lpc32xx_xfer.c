
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int steps; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_4__ {int parent; } ;
struct mtd_info {int writesize; TYPE_2__ dev; } ;
struct lpc32xx_nand_host {int* data_buf; int* ecc_buf; int io_base; int dma_chan; int io_base_dma; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int EIO ;
 int LPC32XX_DMA_TIMEOUT ;
 int SLCCFG_DMA_BURST ;
 int SLCCFG_DMA_DIR ;
 int SLCCFG_DMA_ECC ;
 int SLCCFG_ECC_EN ;
 int SLCCTRL_DMA_START ;
 int SLCCTRL_ECC_CLEAR ;
 int SLCSTAT_DMA_FIFO ;
 int SLC_CFG (int ) ;
 int SLC_CTRL (int ) ;
 int SLC_DMA_DATA (int ) ;
 int SLC_ECC (int ) ;
 int SLC_STAT (int ) ;
 int SLC_TC (int ) ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int dmaengine_terminate_all (int ) ;
 void* high_memory ;
 unsigned long jiffies ;
 int lpc32xx_xmit_dma (struct mtd_info*,int ,int*,int,int) ;
 int memcpy (int*,int*,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readl (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static int lpc32xx_xfer(struct mtd_info *mtd, uint8_t *buf, int eccsubpages,
   int read)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 int i, status = 0;
 unsigned long timeout;
 int res;
 enum dma_transfer_direction dir =
  read ? DMA_DEV_TO_MEM : DMA_MEM_TO_DEV;
 uint8_t *dma_buf;
 bool dma_mapped;

 if ((void *)buf <= high_memory) {
  dma_buf = buf;
  dma_mapped = 1;
 } else {
  dma_buf = host->data_buf;
  dma_mapped = 0;
  if (!read)
   memcpy(host->data_buf, buf, mtd->writesize);
 }

 if (read) {
  writel(readl(SLC_CFG(host->io_base)) |
         SLCCFG_DMA_DIR | SLCCFG_ECC_EN | SLCCFG_DMA_ECC |
         SLCCFG_DMA_BURST, SLC_CFG(host->io_base));
 } else {
  writel((readl(SLC_CFG(host->io_base)) |
   SLCCFG_ECC_EN | SLCCFG_DMA_ECC | SLCCFG_DMA_BURST) &
         ~SLCCFG_DMA_DIR,
   SLC_CFG(host->io_base));
 }


 writel(SLCCTRL_ECC_CLEAR, SLC_CTRL(host->io_base));


 writel(mtd->writesize, SLC_TC(host->io_base));


 writel(readl(SLC_CTRL(host->io_base)) | SLCCTRL_DMA_START,
        SLC_CTRL(host->io_base));

 for (i = 0; i < chip->ecc.steps; i++) {

  res = lpc32xx_xmit_dma(mtd, SLC_DMA_DATA(host->io_base_dma),
           dma_buf + i * chip->ecc.size,
           mtd->writesize / chip->ecc.steps, dir);
  if (res)
   return res;


  if (i == chip->ecc.steps - 1)
   break;
  if (!read)
   udelay(10);
  res = lpc32xx_xmit_dma(mtd, SLC_ECC(host->io_base_dma),
           &host->ecc_buf[i], 4, DMA_DEV_TO_MEM);
  if (res)
   return res;
 }
 if (readl(SLC_STAT(host->io_base)) & SLCSTAT_DMA_FIFO) {
  dev_warn(mtd->dev.parent, "FIFO not empty!\n");
  timeout = jiffies + msecs_to_jiffies(LPC32XX_DMA_TIMEOUT);
  while ((readl(SLC_STAT(host->io_base)) & SLCSTAT_DMA_FIFO) &&
         time_before(jiffies, timeout))
   cpu_relax();
  if (!time_before(jiffies, timeout)) {
   dev_err(mtd->dev.parent, "FIFO held data too long\n");
   status = -EIO;
  }
 }


 if (!read)
  udelay(10);
 host->ecc_buf[chip->ecc.steps - 1] =
  readl(SLC_ECC(host->io_base));


 dmaengine_terminate_all(host->dma_chan);

 if (readl(SLC_STAT(host->io_base)) & SLCSTAT_DMA_FIFO ||
     readl(SLC_TC(host->io_base))) {

  dev_err(mtd->dev.parent, "DMA FIFO failure\n");
  status = -EIO;
 }


 writel(readl(SLC_CTRL(host->io_base)) & ~SLCCTRL_DMA_START,
        SLC_CTRL(host->io_base));
 writel(readl(SLC_CFG(host->io_base)) &
        ~(SLCCFG_DMA_DIR | SLCCFG_ECC_EN | SLCCFG_DMA_ECC |
   SLCCFG_DMA_BURST), SLC_CFG(host->io_base));

 if (!dma_mapped && read)
  memcpy(buf, host->data_buf, mtd->writesize);

 return status;
}
