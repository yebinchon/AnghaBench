
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int ESDHC_CTRL_4BITBUS ;
 int ESDHC_CTRL_8BITBUS ;
 int ESDHC_CTRL_BUSWIDTH_MASK ;
 int ESDHC_PROCTL ;


 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void esdhc_pltfm_set_bus_width(struct sdhci_host *host, int width)
{
 u32 ctrl;

 ctrl = sdhci_readl(host, ESDHC_PROCTL);
 ctrl &= (~ESDHC_CTRL_BUSWIDTH_MASK);
 switch (width) {
 case 128:
  ctrl |= ESDHC_CTRL_8BITBUS;
  break;

 case 129:
  ctrl |= ESDHC_CTRL_4BITBUS;
  break;

 default:
  break;
 }

 sdhci_writel(host, ctrl, ESDHC_PROCTL);
}
