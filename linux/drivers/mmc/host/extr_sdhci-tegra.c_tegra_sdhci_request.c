
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_tegra {int last_calib; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
typedef int ktime_t ;


 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ms (int ) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_request (struct mmc_host*,struct mmc_request*) ;
 int tegra_sdhci_pad_autocalib (struct sdhci_host*) ;

__attribute__((used)) static void tegra_sdhci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 ktime_t since_calib = ktime_sub(ktime_get(), tegra_host->last_calib);


 if (ktime_to_ms(since_calib) > 100) {
  tegra_sdhci_pad_autocalib(host);
  tegra_host->last_calib = ktime_get();
 }

 sdhci_request(mmc, mrq);
}
