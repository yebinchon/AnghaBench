
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;


 int mmc_send_tuning (int ,int ,int *) ;
 int tegra_sdhci_set_tap (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static int tegra_sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
{
 unsigned int min, max;






 min = 10;
 while (min < 255) {
  tegra_sdhci_set_tap(host, min);
  if (!mmc_send_tuning(host->mmc, opcode, ((void*)0)))
   break;
  min++;
 }


 max = min + 1;
 while (max < 255) {
  tegra_sdhci_set_tap(host, max);
  if (mmc_send_tuning(host->mmc, opcode, ((void*)0))) {
   max--;
   break;
  }
  max++;
 }


 tegra_sdhci_set_tap(host, min + ((max - min) * 3 / 4));

 return mmc_send_tuning(host->mmc, opcode, ((void*)0));
}
