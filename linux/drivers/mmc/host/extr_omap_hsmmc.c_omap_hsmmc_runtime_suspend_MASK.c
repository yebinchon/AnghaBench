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
struct omap_hsmmc_host {int flags; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  base; TYPE_1__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIRQ_EN ; 
 int FUNC0 (int) ; 
 int EBUSY ; 
 int HSMMC_SDIO_IRQ_ENABLED ; 
 int /*<<< orphan*/  IE ; 
 int /*<<< orphan*/  ISE ; 
 int MMC_CAP_SDIO_IRQ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSTATE ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  STAT_CLEAR ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct omap_hsmmc_host* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct omap_hsmmc_host *host;
	unsigned long flags;
	int ret = 0;

	host = FUNC4(dev);
	FUNC5(host);
	FUNC3(dev, "disabled\n");

	FUNC8(&host->irq_lock, flags);
	if ((host->mmc->caps & MMC_CAP_SDIO_IRQ) &&
	    (host->flags & HSMMC_SDIO_IRQ_ENABLED)) {
		/* disable sdio irq handling to prevent race */
		FUNC2(host->base, ISE, 0);
		FUNC2(host->base, IE, 0);

		if (!(FUNC1(host->base, PSTATE) & FUNC0(1))) {
			/*
			 * dat1 line low, pending sdio irq
			 * race condition: possible irq handler running on
			 * multi-core, abort
			 */
			FUNC3(dev, "pending sdio irq, abort suspend\n");
			FUNC2(host->base, STAT, STAT_CLEAR);
			FUNC2(host->base, ISE, CIRQ_EN);
			FUNC2(host->base, IE, CIRQ_EN);
			FUNC7(dev);
			ret = -EBUSY;
			goto abort;
		}

		FUNC6(dev);
	} else {
		FUNC6(dev);
	}

abort:
	FUNC9(&host->irq_lock, flags);
	return ret;
}