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
struct omap_hsmmc_host {int flags; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  base; TYPE_1__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIRQ_EN ; 
 int HSMMC_SDIO_IRQ_ENABLED ; 
 int /*<<< orphan*/  IE ; 
 int /*<<< orphan*/  ISE ; 
 int MMC_CAP_SDIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  STAT_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct omap_hsmmc_host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct omap_hsmmc_host *host;
	unsigned long flags;

	host = FUNC2(dev);
	FUNC3(host);
	FUNC1(dev, "enabled\n");

	FUNC5(&host->irq_lock, flags);
	if ((host->mmc->caps & MMC_CAP_SDIO_IRQ) &&
	    (host->flags & HSMMC_SDIO_IRQ_ENABLED)) {

		FUNC4(host->dev);

		/* irq lost, if pinmux incorrect */
		FUNC0(host->base, STAT, STAT_CLEAR);
		FUNC0(host->base, ISE, CIRQ_EN);
		FUNC0(host->base, IE, CIRQ_EN);
	} else {
		FUNC4(host->dev);
	}
	FUNC6(&host->irq_lock, flags);
	return 0;
}