
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_omap_host {scalar_t__ bus_mode; int power_mode; } ;


 scalar_t__ MMC_POWER_OFF ;
 int sdhci_omap_disable_tuning (struct sdhci_omap_host*) ;

__attribute__((used)) static void sdhci_omap_set_power_mode(struct sdhci_omap_host *omap_host,
          u8 power_mode)
{
 if (omap_host->bus_mode == MMC_POWER_OFF)
  sdhci_omap_disable_tuning(omap_host);
 omap_host->power_mode = power_mode;
}
