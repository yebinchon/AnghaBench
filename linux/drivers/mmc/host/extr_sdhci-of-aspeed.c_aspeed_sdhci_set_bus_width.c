
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct aspeed_sdhci {struct aspeed_sdc* parent; } ;
struct aspeed_sdc {int dummy; } ;


 int MMC_BUS_WIDTH_4 ;
 int MMC_BUS_WIDTH_8 ;
 int SDHCI_CTRL_4BITBUS ;
 int SDHCI_HOST_CONTROL ;
 int aspeed_sdc_configure_8bit_mode (struct aspeed_sdc*,struct aspeed_sdhci*,int) ;
 struct aspeed_sdhci* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
{
 struct sdhci_pltfm_host *pltfm_priv;
 struct aspeed_sdhci *aspeed_sdhci;
 struct aspeed_sdc *aspeed_sdc;
 u8 ctrl;

 pltfm_priv = sdhci_priv(host);
 aspeed_sdhci = sdhci_pltfm_priv(pltfm_priv);
 aspeed_sdc = aspeed_sdhci->parent;


 aspeed_sdc_configure_8bit_mode(aspeed_sdc, aspeed_sdhci,
           width == MMC_BUS_WIDTH_8);


 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
 if (width == MMC_BUS_WIDTH_4)
  ctrl |= SDHCI_CTRL_4BITBUS;
 else
  ctrl &= ~SDHCI_CTRL_4BITBUS;
 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
}
