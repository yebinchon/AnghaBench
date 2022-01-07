
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sdhci_host {int dummy; } ;


 scalar_t__ MMC_POWER_OFF ;
 int udelay (int) ;

__attribute__((used)) static void sdhci_bcm_kona_init_74_clocks(struct sdhci_host *host,
    u8 power_mode)
{





 if (power_mode != MMC_POWER_OFF)
  udelay(740);
}
