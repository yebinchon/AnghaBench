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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct moxart_host {scalar_t__ base; int /*<<< orphan*/  dma_chan_rx; int /*<<< orphan*/  dma_chan_tx; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int CLK_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_CLOCK_CONTROL ; 
 scalar_t__ REG_INTERRUPT_MASK ; 
 scalar_t__ REG_POWER_CONTROL ; 
 struct mmc_host* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct moxart_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct mmc_host *mmc = FUNC1(&pdev->dev);
	struct moxart_host *host = FUNC5(mmc);

	FUNC2(&pdev->dev, NULL);

	if (mmc) {
		if (!FUNC0(host->dma_chan_tx))
			FUNC3(host->dma_chan_tx);
		if (!FUNC0(host->dma_chan_rx))
			FUNC3(host->dma_chan_rx);
		FUNC6(mmc);
		FUNC4(mmc);

		FUNC8(0, host->base + REG_INTERRUPT_MASK);
		FUNC8(0, host->base + REG_POWER_CONTROL);
		FUNC8(FUNC7(host->base + REG_CLOCK_CONTROL) | CLK_OFF,
		       host->base + REG_CLOCK_CONTROL);
	}
	return 0;
}