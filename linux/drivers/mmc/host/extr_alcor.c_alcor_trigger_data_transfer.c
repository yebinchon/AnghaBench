
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_data {int flags; scalar_t__ host_cookie; int sg_count; int blksz; } ;
struct alcor_sdmmc_host {int dma_on; struct mmc_data* data; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_DATA_DMA_MODE ;
 int AU6601_DATA_START_XFER ;
 int AU6601_DATA_WRITE ;
 int AU6601_DATA_XFER_CTRL ;
 int AU6601_REG_BLOCK_SIZE ;
 scalar_t__ COOKIE_MAPPED ;
 int MMC_DATA_WRITE ;
 int alcor_data_set_dma (struct alcor_sdmmc_host*) ;
 int alcor_write32 (struct alcor_pci_priv*,int,int ) ;
 int alcor_write8 (struct alcor_pci_priv*,int,int ) ;

__attribute__((used)) static void alcor_trigger_data_transfer(struct alcor_sdmmc_host *host)
{
 struct alcor_pci_priv *priv = host->alcor_pci;
 struct mmc_data *data = host->data;
 u8 ctrl = 0;

 if (data->flags & MMC_DATA_WRITE)
  ctrl |= AU6601_DATA_WRITE;

 if (data->host_cookie == COOKIE_MAPPED) {
  alcor_data_set_dma(host);
  ctrl |= AU6601_DATA_DMA_MODE;
  host->dma_on = 1;
  alcor_write32(priv, data->sg_count * 0x1000,
          AU6601_REG_BLOCK_SIZE);
 } else {






  alcor_write32(priv, data->blksz, AU6601_REG_BLOCK_SIZE);
 }

 alcor_write8(priv, ctrl | AU6601_DATA_START_XFER,
        AU6601_DATA_XFER_CTRL);
}
