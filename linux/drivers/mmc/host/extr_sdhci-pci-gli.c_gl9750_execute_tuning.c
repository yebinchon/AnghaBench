
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_host {scalar_t__ tuning_mode; int tuning_err; scalar_t__ tuning_count; TYPE_1__* mmc; } ;
struct TYPE_2__ {scalar_t__ retune_period; } ;


 scalar_t__ SDHCI_TUNING_MODE_1 ;
 int __sdhci_execute_tuning_9750 (struct sdhci_host*,int ) ;
 int gli_set_9750 (struct sdhci_host*) ;
 int sdhci_end_tuning (struct sdhci_host*) ;

__attribute__((used)) static int gl9750_execute_tuning(struct sdhci_host *host, u32 opcode)
{
 host->mmc->retune_period = 0;
 if (host->tuning_mode == SDHCI_TUNING_MODE_1)
  host->mmc->retune_period = host->tuning_count;

 gli_set_9750(host);
 host->tuning_err = __sdhci_execute_tuning_9750(host, opcode);
 sdhci_end_tuning(host);

 return 0;
}
