
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alcor_sdmmc_host {struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {struct alcor_dev_cfg* cfg; } ;
struct alcor_dev_cfg {int dma; } ;


 int AU6601_ACTIVE_CTRL ;
 int AU6601_DETECT_EN ;
 int AU6601_DETECT_STATUS ;
 int AU6601_DMA_BOUNDARY ;
 int AU6601_INTERFACE_MODE_CTRL ;
 int AU6601_OUTPUT_ENABLE ;
 int AU6601_PAD_DRIVE0 ;
 int AU6601_PAD_DRIVE1 ;
 int AU6601_PAD_DRIVE2 ;
 int AU6601_POWER_CONTROL ;
 int AU6601_REG_BUS_CTRL ;
 int AU6601_RESET_CMD ;
 int AU6601_RESET_DATA ;
 int AU6601_SD_CARD ;
 int alcor_reset (struct alcor_sdmmc_host*,int ) ;
 int alcor_unmask_sd_irqs (struct alcor_sdmmc_host*) ;
 int alcor_write8 (struct alcor_pci_priv*,int,int ) ;

__attribute__((used)) static void alcor_hw_init(struct alcor_sdmmc_host *host)
{
 struct alcor_pci_priv *priv = host->alcor_pci;
 struct alcor_dev_cfg *cfg = priv->cfg;







 alcor_reset(host, AU6601_RESET_CMD);

 alcor_write8(priv, 0, AU6601_DMA_BOUNDARY);

 alcor_write8(priv, AU6601_SD_CARD, AU6601_ACTIVE_CTRL);


 alcor_write8(priv, 0, AU6601_REG_BUS_CTRL);


 alcor_reset(host, AU6601_RESET_DATA);

 alcor_write8(priv, 0, AU6601_DMA_BOUNDARY);

 alcor_write8(priv, 0, AU6601_INTERFACE_MODE_CTRL);

 alcor_write8(priv, 0x44, AU6601_PAD_DRIVE0);
 alcor_write8(priv, 0x44, AU6601_PAD_DRIVE1);
 alcor_write8(priv, 0x00, AU6601_PAD_DRIVE2);




 alcor_write8(priv, cfg->dma, AU6601_DMA_BOUNDARY);


 alcor_write8(priv, 0, AU6601_OUTPUT_ENABLE);
 alcor_write8(priv, 0, AU6601_POWER_CONTROL);

 alcor_write8(priv, AU6601_DETECT_EN, AU6601_DETECT_STATUS);

 alcor_unmask_sd_irqs(host);
}
