
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_1__* host; } ;
struct mmc_host_ops {int execute_tuning; } ;
struct TYPE_2__ {struct mmc_host_ops mmc_host_ops; } ;


 int amd_execute_tuning ;

__attribute__((used)) static int amd_probe_slot(struct sdhci_pci_slot *slot)
{
 struct mmc_host_ops *ops = &slot->host->mmc_host_ops;

 ops->execute_tuning = amd_execute_tuning;

 return 0;
}
