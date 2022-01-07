
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int quirks; } ;


 int SDHCI_CTRL_LED ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_QUIRK_NO_LED ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void __sdhci_led_deactivate(struct sdhci_host *host)
{
 u8 ctrl;

 if (host->quirks & SDHCI_QUIRK_NO_LED)
  return;

 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
 ctrl &= ~SDHCI_CTRL_LED;
 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
}
