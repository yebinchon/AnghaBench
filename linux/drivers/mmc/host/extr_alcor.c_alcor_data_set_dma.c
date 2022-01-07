
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct alcor_sdmmc_host {int sg_count; scalar_t__ sg; int dev; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_REG_SDMA_ADDR ;
 int alcor_write32 (struct alcor_pci_priv*,scalar_t__,int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ sg_dma_address (scalar_t__) ;
 int sg_dma_len (scalar_t__) ;
 scalar_t__ sg_next (scalar_t__) ;

__attribute__((used)) static void alcor_data_set_dma(struct alcor_sdmmc_host *host)
{
 struct alcor_pci_priv *priv = host->alcor_pci;
 u32 addr;

 if (!host->sg_count)
  return;

 if (!host->sg) {
  dev_err(host->dev, "have blocks, but no SG\n");
  return;
 }

 if (!sg_dma_len(host->sg)) {
  dev_err(host->dev, "DMA SG len == 0\n");
  return;
 }


 addr = (u32)sg_dma_address(host->sg);

 alcor_write32(priv, addr, AU6601_REG_SDMA_ADDR);
 host->sg = sg_next(host->sg);
 host->sg_count--;
}
