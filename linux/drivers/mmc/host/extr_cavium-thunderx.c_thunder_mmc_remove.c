
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dummy; } ;
struct cvm_mmc_host {int clk; scalar_t__ dma_base; scalar_t__* slot; } ;


 int CAVIUM_MAX_MMC ;
 scalar_t__ MIO_EMM_DMA_CFG (struct cvm_mmc_host*) ;
 int MIO_EMM_DMA_CFG_EN ;
 int clk_disable_unprepare (int ) ;
 int cvm_mmc_of_slot_remove (scalar_t__) ;
 struct cvm_mmc_host* pci_get_drvdata (struct pci_dev*) ;
 int readq (scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunder_mmc_remove(struct pci_dev *pdev)
{
 struct cvm_mmc_host *host = pci_get_drvdata(pdev);
 u64 dma_cfg;
 int i;

 for (i = 0; i < CAVIUM_MAX_MMC; i++)
  if (host->slot[i])
   cvm_mmc_of_slot_remove(host->slot[i]);

 dma_cfg = readq(host->dma_base + MIO_EMM_DMA_CFG(host));
 dma_cfg &= ~MIO_EMM_DMA_CFG_EN;
 writeq(dma_cfg, host->dma_base + MIO_EMM_DMA_CFG(host));

 clk_disable_unprepare(host->clk);
}
