
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int bus_on; TYPE_1__* mmc; } ;
struct TYPE_2__ {int parent; } ;


 int pm_runtime_get_noresume (int ) ;

__attribute__((used)) static void sdhci_runtime_pm_bus_on(struct sdhci_host *host)
{
 if (host->bus_on)
  return;
 host->bus_on = 1;
 pm_runtime_get_noresume(host->mmc->parent);
}
