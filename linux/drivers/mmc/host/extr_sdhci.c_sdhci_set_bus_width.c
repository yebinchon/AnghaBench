
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int caps; } ;


 int MMC_BUS_WIDTH_4 ;
 int MMC_BUS_WIDTH_8 ;
 int MMC_CAP_8_BIT_DATA ;
 int SDHCI_CTRL_4BITBUS ;
 int SDHCI_CTRL_8BITBUS ;
 int SDHCI_HOST_CONTROL ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

void sdhci_set_bus_width(struct sdhci_host *host, int width)
{
 u8 ctrl;

 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
 if (width == MMC_BUS_WIDTH_8) {
  ctrl &= ~SDHCI_CTRL_4BITBUS;
  ctrl |= SDHCI_CTRL_8BITBUS;
 } else {
  if (host->mmc->caps & MMC_CAP_8_BIT_DATA)
   ctrl &= ~SDHCI_CTRL_8BITBUS;
  if (width == MMC_BUS_WIDTH_4)
   ctrl |= SDHCI_CTRL_4BITBUS;
  else
   ctrl &= ~SDHCI_CTRL_4BITBUS;
 }
 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
}
