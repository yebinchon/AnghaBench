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
typedef  int u16 ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {scalar_t__ actual_clock; } ;

/* Variables and functions */
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_CLOCK_INT_EN ; 
 int SDHCI_CLOCK_INT_STABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sdhci_host*,unsigned int,scalar_t__*) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host, unsigned int clock)
{
	u16 clk;
	unsigned long timeout;

	host->mmc->actual_clock = 0;

	/*
	 * There is no requirement to disable the internal clock before
	 * changing the SD clock configuration. Moreover, disabling the
	 * internal clock, changing the configuration and re-enabling the
	 * internal clock causes some bugs. It can prevent to get the internal
	 * clock stable flag ready and an unexpected switch to the base clock
	 * when using presets.
	 */
	clk = FUNC4(host, SDHCI_CLOCK_CONTROL);
	clk &= SDHCI_CLOCK_INT_EN;
	FUNC5(host, clk, SDHCI_CLOCK_CONTROL);

	if (clock == 0)
		return;

	clk = FUNC3(host, clock, &host->mmc->actual_clock);

	clk |= SDHCI_CLOCK_INT_EN;
	FUNC5(host, clk, SDHCI_CLOCK_CONTROL);

	/* Wait max 20 ms */
	timeout = 20;
	while (!((clk = FUNC4(host, SDHCI_CLOCK_CONTROL))
		& SDHCI_CLOCK_INT_STABLE)) {
		if (timeout == 0) {
			FUNC2("%s: Internal clock never stabilised.\n",
			       FUNC1(host->mmc));
			return;
		}
		timeout--;
		FUNC0(1);
	}

	clk |= SDHCI_CLOCK_CARD_EN;
	FUNC5(host, clk, SDHCI_CLOCK_CONTROL);
}