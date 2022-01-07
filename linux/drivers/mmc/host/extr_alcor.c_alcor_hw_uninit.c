
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alcor_sdmmc_host {struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;


 int AU6601_DETECT_STATUS ;
 int AU6601_OPT ;
 int AU6601_OUTPUT_ENABLE ;
 int AU6601_POWER_CONTROL ;
 int AU6601_RESET_CMD ;
 int AU6601_RESET_DATA ;
 int alcor_mask_sd_irqs (struct alcor_sdmmc_host*) ;
 int alcor_reset (struct alcor_sdmmc_host*,int) ;
 int alcor_write8 (struct alcor_pci_priv*,int ,int ) ;

__attribute__((used)) static void alcor_hw_uninit(struct alcor_sdmmc_host *host)
{
 struct alcor_pci_priv *priv = host->alcor_pci;

 alcor_mask_sd_irqs(host);
 alcor_reset(host, AU6601_RESET_CMD | AU6601_RESET_DATA);

 alcor_write8(priv, 0, AU6601_DETECT_STATUS);

 alcor_write8(priv, 0, AU6601_OUTPUT_ENABLE);
 alcor_write8(priv, 0, AU6601_POWER_CONTROL);

 alcor_write8(priv, 0, AU6601_OPT);
}
