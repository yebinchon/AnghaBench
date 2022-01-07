
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_2__* chip; TYPE_1__* host; } ;
struct mmc_host_ops {int start_signal_voltage_switch; int execute_tuning; } ;
struct mmc_host {int f_max; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {TYPE_3__* pdev; } ;
struct TYPE_4__ {struct mmc_host* mmc; struct mmc_host_ops mmc_host_ops; } ;


 int byt_ocp_setting (TYPE_3__*) ;
 int byt_read_dsm (struct sdhci_pci_slot*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 int intel_execute_tuning ;
 int intel_start_signal_voltage_switch ;

__attribute__((used)) static void byt_probe_slot(struct sdhci_pci_slot *slot)
{
 struct mmc_host_ops *ops = &slot->host->mmc_host_ops;
 struct device *dev = &slot->chip->pdev->dev;
 struct mmc_host *mmc = slot->host->mmc;

 byt_read_dsm(slot);

 byt_ocp_setting(slot->chip->pdev);

 ops->execute_tuning = intel_execute_tuning;
 ops->start_signal_voltage_switch = intel_start_signal_voltage_switch;

 device_property_read_u32(dev, "max-frequency", &mmc->f_max);
}
