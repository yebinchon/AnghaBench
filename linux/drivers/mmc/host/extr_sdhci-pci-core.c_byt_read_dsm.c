
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_3__* chip; TYPE_2__* host; } ;
struct mmc_host {int dummy; } ;
struct intel_host {int d3_retune; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int rpm_retune; TYPE_1__* pdev; } ;
struct TYPE_5__ {struct mmc_host* mmc; } ;
struct TYPE_4__ {struct device dev; } ;


 int intel_dsm_init (struct intel_host*,struct device*,struct mmc_host*) ;
 struct intel_host* sdhci_pci_priv (struct sdhci_pci_slot*) ;

__attribute__((used)) static void byt_read_dsm(struct sdhci_pci_slot *slot)
{
 struct intel_host *intel_host = sdhci_pci_priv(slot);
 struct device *dev = &slot->chip->pdev->dev;
 struct mmc_host *mmc = slot->host->mmc;

 intel_dsm_init(intel_host, dev, mmc);
 slot->chip->rpm_retune = intel_host->d3_retune;
}
