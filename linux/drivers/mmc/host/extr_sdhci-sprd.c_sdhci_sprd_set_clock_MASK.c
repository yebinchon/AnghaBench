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
struct sdhci_host {unsigned int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_SPRD_BIT_CMD_DLY_INV ; 
 int SDHCI_SPRD_BIT_POSRD_DLY_INV ; 
 unsigned int SDHCI_SPRD_PHY_DLL_CLK ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, unsigned int clock)
{
	bool en = false, clk_changed = false;

	if (clock == 0) {
		FUNC4(host, 0, SDHCI_CLOCK_CONTROL);
	} else if (clock != host->clock) {
		FUNC2(host);
		FUNC0(host, clock);

		if (clock <= 400000)
			en = true;
		FUNC3(host, SDHCI_SPRD_BIT_CMD_DLY_INV |
					  SDHCI_SPRD_BIT_POSRD_DLY_INV, en);
		clk_changed = true;
	} else {
		FUNC0(host, clock);
	}

	/*
	 * According to the Spreadtrum SD host specification, when we changed
	 * the clock to be more than 52M, we should enable the PHY DLL which
	 * is used to track the clock frequency to make the clock work more
	 * stable. Otherwise deviation may occur of the higher clock.
	 */
	if (clk_changed && clock > SDHCI_SPRD_PHY_DLL_CLK)
		FUNC1(host);
}