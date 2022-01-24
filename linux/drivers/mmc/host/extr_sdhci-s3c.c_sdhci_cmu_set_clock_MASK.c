#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sdhci_s3c {size_t cur_clk; int /*<<< orphan*/ * clk_bus; TYPE_1__* pdev; } ;
struct sdhci_host {TYPE_2__* mmc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ actual_clock; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_CLOCK_INT_EN ; 
 int SDHCI_CLOCK_INT_STABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 struct sdhci_s3c* FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC8(struct sdhci_host *host, unsigned int clock)
{
	struct sdhci_s3c *ourhost = FUNC7(host);
	struct device *dev = &ourhost->pdev->dev;
	unsigned long timeout;
	u16 clk = 0;
	int ret;

	host->mmc->actual_clock = 0;

	/* If the clock is going off, set to 0 at clock control register */
	if (clock == 0) {
		FUNC6(host, 0, SDHCI_CLOCK_CONTROL);
		return;
	}

	FUNC5(host, clock);

	/* Reset SD Clock Enable */
	clk = FUNC4(host, SDHCI_CLOCK_CONTROL);
	clk &= ~SDHCI_CLOCK_CARD_EN;
	FUNC6(host, clk, SDHCI_CLOCK_CONTROL);

	ret = FUNC0(ourhost->clk_bus[ourhost->cur_clk], clock);
	if (ret != 0) {
		FUNC1(dev, "%s: failed to set clock rate %uHz\n",
			FUNC3(host->mmc), clock);
		return;
	}

	clk = SDHCI_CLOCK_INT_EN;
	FUNC6(host, clk, SDHCI_CLOCK_CONTROL);

	/* Wait max 20 ms */
	timeout = 20;
	while (!((clk = FUNC4(host, SDHCI_CLOCK_CONTROL))
		& SDHCI_CLOCK_INT_STABLE)) {
		if (timeout == 0) {
			FUNC1(dev, "%s: Internal clock never stabilised.\n",
				FUNC3(host->mmc));
			return;
		}
		timeout--;
		FUNC2(1);
	}

	clk |= SDHCI_CLOCK_CARD_EN;
	FUNC6(host, clk, SDHCI_CLOCK_CONTROL);
}