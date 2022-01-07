
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct platform_device {int dummy; } ;
struct cvm_mmc_host {scalar_t__ dma_base; scalar_t__* slot; } ;


 int CAVIUM_MAX_MMC ;
 scalar_t__ MIO_EMM_DMA_CFG (struct cvm_mmc_host*) ;
 int MIO_EMM_DMA_CFG_EN ;
 int cvm_mmc_of_slot_remove (scalar_t__) ;
 int octeon_mmc_set_shared_power (struct cvm_mmc_host*,int ) ;
 struct cvm_mmc_host* platform_get_drvdata (struct platform_device*) ;
 int readq (scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static int octeon_mmc_remove(struct platform_device *pdev)
{
 struct cvm_mmc_host *host = platform_get_drvdata(pdev);
 u64 dma_cfg;
 int i;

 for (i = 0; i < CAVIUM_MAX_MMC; i++)
  if (host->slot[i])
   cvm_mmc_of_slot_remove(host->slot[i]);

 dma_cfg = readq(host->dma_base + MIO_EMM_DMA_CFG(host));
 dma_cfg &= ~MIO_EMM_DMA_CFG_EN;
 writeq(dma_cfg, host->dma_base + MIO_EMM_DMA_CFG(host));

 octeon_mmc_set_shared_power(host, 0);
 return 0;
}
