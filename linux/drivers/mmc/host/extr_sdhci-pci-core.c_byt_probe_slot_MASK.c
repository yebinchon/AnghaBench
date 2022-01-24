#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pci_slot {TYPE_2__* chip; TYPE_1__* host; } ;
struct mmc_host_ops {int /*<<< orphan*/  start_signal_voltage_switch; int /*<<< orphan*/  execute_tuning; } ;
struct mmc_host {int /*<<< orphan*/  f_max; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {TYPE_3__* pdev; } ;
struct TYPE_4__ {struct mmc_host* mmc; struct mmc_host_ops mmc_host_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_pci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_execute_tuning ; 
 int /*<<< orphan*/  intel_start_signal_voltage_switch ; 

__attribute__((used)) static void FUNC3(struct sdhci_pci_slot *slot)
{
	struct mmc_host_ops *ops = &slot->host->mmc_host_ops;
	struct device *dev = &slot->chip->pdev->dev;
	struct mmc_host *mmc = slot->host->mmc;

	FUNC1(slot);

	FUNC0(slot->chip->pdev);

	ops->execute_tuning = intel_execute_tuning;
	ops->start_signal_voltage_switch = intel_start_signal_voltage_switch;

	FUNC2(dev, "max-frequency", &mmc->f_max);
}