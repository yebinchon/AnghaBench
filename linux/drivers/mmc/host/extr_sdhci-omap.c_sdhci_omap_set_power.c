
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int mmc_regulator_set_ocr (struct mmc_host*,int ,unsigned short) ;

__attribute__((used)) static void sdhci_omap_set_power(struct sdhci_host *host, unsigned char mode,
     unsigned short vdd)
{
 struct mmc_host *mmc = host->mmc;

 mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
}
