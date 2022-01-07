
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {unsigned int timing; } ;
struct mmc_ios {unsigned int timing; } ;
struct mmc_host {int dummy; } ;


 unsigned int MMC_TIMING_MMC_HS ;
 unsigned int MMC_TIMING_MMC_HS200 ;
 unsigned int MMC_TIMING_MMC_HS400 ;
 int SDHCI_HOST_CONTROL2 ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_acpi_amd_hs400_dll (struct sdhci_host*) ;
 int sdhci_set_ios (struct mmc_host*,struct mmc_ios*) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void amd_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned int old_timing = host->timing;

 sdhci_set_ios(mmc, ios);
 if (old_timing == MMC_TIMING_MMC_HS200 &&
     ios->timing == MMC_TIMING_MMC_HS)
  sdhci_writew(host, 0x9, SDHCI_HOST_CONTROL2);
 if (old_timing != MMC_TIMING_MMC_HS400 &&
     ios->timing == MMC_TIMING_MMC_HS400) {
  sdhci_writew(host, 0x80, SDHCI_HOST_CONTROL2);
  sdhci_acpi_amd_hs400_dll(host);
 }
}
