
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int caps; } ;


 int MMC_CAP_NONREMOVABLE ;
 int sdhci_at91_set_force_card_detect (struct sdhci_host*) ;
 int sdhci_reset (struct sdhci_host*,int ) ;

__attribute__((used)) static void sdhci_at91_reset(struct sdhci_host *host, u8 mask)
{
 sdhci_reset(host, mask);

 if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
  sdhci_at91_set_force_card_detect(host);
}
