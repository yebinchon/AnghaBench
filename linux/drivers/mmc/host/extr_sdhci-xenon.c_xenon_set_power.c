
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sdhci_host {scalar_t__ pwr; struct mmc_host* mmc; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,unsigned short) ;
 int sdhci_set_power_noreg (struct sdhci_host*,unsigned char,unsigned short) ;

__attribute__((used)) static void xenon_set_power(struct sdhci_host *host, unsigned char mode,
  unsigned short vdd)
{
 struct mmc_host *mmc = host->mmc;
 u8 pwr = host->pwr;

 sdhci_set_power_noreg(host, mode, vdd);

 if (host->pwr == pwr)
  return;

 if (host->pwr == 0)
  vdd = 0;

 if (!IS_ERR(mmc->supply.vmmc))
  mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
}
