
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int MMC_BUS_WIDTH_4 ;
 int MMC_BUS_WIDTH_8 ;
 int MMC_CARD ;
 int MMC_WIDTH ;
 int SDHCI_CTRL_4BITBUS ;
 scalar_t__ SDHCI_HOST_CONTROL ;
 scalar_t__ SD_CE_ATA_2 ;
 int readb (scalar_t__) ;
 int readw (scalar_t__) ;
 int writeb (int ,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void pxav2_mmc_set_bus_width(struct sdhci_host *host, int width)
{
 u8 ctrl;
 u16 tmp;

 ctrl = readb(host->ioaddr + SDHCI_HOST_CONTROL);
 tmp = readw(host->ioaddr + SD_CE_ATA_2);
 if (width == MMC_BUS_WIDTH_8) {
  ctrl &= ~SDHCI_CTRL_4BITBUS;
  tmp |= MMC_CARD | MMC_WIDTH;
 } else {
  tmp &= ~(MMC_CARD | MMC_WIDTH);
  if (width == MMC_BUS_WIDTH_4)
   ctrl |= SDHCI_CTRL_4BITBUS;
  else
   ctrl &= ~SDHCI_CTRL_4BITBUS;
 }
 writew(tmp, host->ioaddr + SD_CE_ATA_2);
 writeb(ctrl, host->ioaddr + SDHCI_HOST_CONTROL);
}
