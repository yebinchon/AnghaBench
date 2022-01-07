
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int quirks; } ;
struct mmc_host {int dummy; } ;


 int SAMPLE_COUNT ;
 int SDHCI_QUIRK_UNSTABLE_RO_DETECT ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int msleep (int) ;
 int sdhci_check_ro (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_get_ro(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 int i, ro_count;

 if (!(host->quirks & SDHCI_QUIRK_UNSTABLE_RO_DETECT))
  return sdhci_check_ro(host);

 ro_count = 0;
 for (i = 0; i < SAMPLE_COUNT; i++) {
  if (sdhci_check_ro(host)) {
   if (++ro_count > SAMPLE_COUNT / 2)
    return 1;
  }
  msleep(30);
 }
 return 0;
}
