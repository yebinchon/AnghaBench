#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_host {int caps; int /*<<< orphan*/  led; int /*<<< orphan*/  class_dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_sdio_irq; } ;

/* Variables and functions */
 int MMC_CAP_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 

int FUNC7(struct mmc_host *host)
{
	int err;

	FUNC0((host->caps & MMC_CAP_SDIO_IRQ) &&
		!host->ops->enable_sdio_irq);

	err = FUNC2(&host->class_dev);
	if (err)
		return err;

	FUNC3(FUNC1(&host->class_dev), &host->led);

#ifdef CONFIG_DEBUG_FS
	mmc_add_host_debugfs(host);
#endif

	FUNC6(host);
	FUNC5(host);

	return 0;
}