
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_omap_host {struct sdhci_host* host; } ;
struct sdhci_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;
 int dev_err (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 int regulator_set_voltage (int ,unsigned int,unsigned int) ;
 int sdhci_omap_set_pbias (struct sdhci_omap_host*,int,unsigned int) ;

__attribute__((used)) static int sdhci_omap_enable_iov(struct sdhci_omap_host *omap_host,
     unsigned int iov)
{
 int ret;
 struct sdhci_host *host = omap_host->host;
 struct mmc_host *mmc = host->mmc;

 ret = sdhci_omap_set_pbias(omap_host, 0, 0);
 if (ret)
  return ret;

 if (!IS_ERR(mmc->supply.vqmmc)) {
  ret = regulator_set_voltage(mmc->supply.vqmmc, iov, iov);
  if (ret) {
   dev_err(mmc_dev(mmc), "vqmmc set voltage failed\n");
   return ret;
  }
 }

 ret = sdhci_omap_set_pbias(omap_host, 1, iov);
 if (ret)
  return ret;

 return 0;
}
