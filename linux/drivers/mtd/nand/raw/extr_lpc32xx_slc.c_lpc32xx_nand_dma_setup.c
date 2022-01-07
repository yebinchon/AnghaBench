
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct mtd_info {TYPE_2__ dev; } ;
struct lpc32xx_nand_host {int dma_chan; TYPE_1__* pdata; int nand_chip; } ;
typedef int dma_cap_mask_t ;
struct TYPE_3__ {int dma_filter; } ;


 int DMA_SLAVE ;
 int EBUSY ;
 int ENOENT ;
 int dev_err (int ,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_request_channel (int ,int ,char*) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int lpc32xx_nand_dma_setup(struct lpc32xx_nand_host *host)
{
 struct mtd_info *mtd = nand_to_mtd(&host->nand_chip);
 dma_cap_mask_t mask;

 if (!host->pdata || !host->pdata->dma_filter) {
  dev_err(mtd->dev.parent, "no DMA platform data\n");
  return -ENOENT;
 }

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 host->dma_chan = dma_request_channel(mask, host->pdata->dma_filter,
          "nand-slc");
 if (!host->dma_chan) {
  dev_err(mtd->dev.parent, "Failed to request DMA channel\n");
  return -EBUSY;
 }

 return 0;
}
