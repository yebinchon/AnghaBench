
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ version; } ;


 int MMC_BUS_WIDTH_4 ;
 int MMC_BUS_WIDTH_8 ;
 int SDHCI_CTRL_4BITBUS ;
 int SDHCI_CTRL_8BITBUS ;
 int SDHCI_CTRL_CDSSEL ;
 int SDHCI_CTRL_CDTLVL ;
 int SDHCI_HOST_CONTROL ;
 scalar_t__ SDHCI_SPEC_300 ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void pic32_sdhci_set_bus_width(struct sdhci_host *host, int width)
{
 u8 ctrl;

 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
 if (width == MMC_BUS_WIDTH_8) {
  ctrl &= ~SDHCI_CTRL_4BITBUS;
  if (host->version >= SDHCI_SPEC_300)
   ctrl |= SDHCI_CTRL_8BITBUS;
 } else {
  if (host->version >= SDHCI_SPEC_300)
   ctrl &= ~SDHCI_CTRL_8BITBUS;
  if (width == MMC_BUS_WIDTH_4)
   ctrl |= SDHCI_CTRL_4BITBUS;
  else
   ctrl &= ~SDHCI_CTRL_4BITBUS;
 }


 ctrl &= ~SDHCI_CTRL_CDTLVL;
 ctrl |= SDHCI_CTRL_CDSSEL;
 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
}
