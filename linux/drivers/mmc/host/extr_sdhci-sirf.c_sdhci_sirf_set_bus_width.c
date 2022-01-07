
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int MMC_BUS_WIDTH_4 ;
 int MMC_BUS_WIDTH_8 ;
 int SDHCI_CTRL_4BITBUS ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_SIRF_8BITBUS ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_sirf_set_bus_width(struct sdhci_host *host, int width)
{
 u8 ctrl;

 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
 ctrl &= ~(SDHCI_CTRL_4BITBUS | SDHCI_SIRF_8BITBUS);






 if (width == MMC_BUS_WIDTH_8)
  ctrl |= SDHCI_SIRF_8BITBUS;
 else if (width == MMC_BUS_WIDTH_4)
  ctrl |= SDHCI_CTRL_4BITBUS;

 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
}
