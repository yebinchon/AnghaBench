#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;
struct bcm2835_host {scalar_t__ dma_chan_rxtx; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  dma_work; int /*<<< orphan*/  irq; scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ SDVDD ; 
 int /*<<< orphan*/  SDVDD_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct bcm2835_host* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct bcm2835_host *host = FUNC7(pdev);
	struct mmc_host *mmc = FUNC5(host);

	FUNC6(mmc);

	FUNC8(SDVDD_POWER_OFF, host->ioaddr + SDVDD);

	FUNC3(host->irq, host);

	FUNC1(&host->dma_work);
	FUNC0(&host->timeout_work);

	if (host->dma_chan_rxtx)
		FUNC2(host->dma_chan_rxtx);

	FUNC4(mmc);

	return 0;
}