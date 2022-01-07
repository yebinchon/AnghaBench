
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 unsigned char MMC_POWER_OFF ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_POWER_ON ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,unsigned short) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_set_power_reg(struct sdhci_host *host, unsigned char mode,
    unsigned short vdd)
{
 struct mmc_host *mmc = host->mmc;

 mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);

 if (mode != MMC_POWER_OFF)
  sdhci_writeb(host, SDHCI_POWER_ON, SDHCI_POWER_CONTROL);
 else
  sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
}
