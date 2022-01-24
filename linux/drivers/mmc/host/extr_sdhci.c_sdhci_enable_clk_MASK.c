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
typedef  int u16 ;
struct sdhci_host {scalar_t__ version; int /*<<< orphan*/  mmc; scalar_t__ v4_mode; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_CLOCK_INT_EN ; 
 int SDHCI_CLOCK_INT_STABLE ; 
 int SDHCI_CLOCK_PLL_EN ; 
 scalar_t__ SDHCI_SPEC_410 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct sdhci_host *host, u16 clk)
{
	ktime_t timeout;

	clk |= SDHCI_CLOCK_INT_EN;
	FUNC7(host, clk, SDHCI_CLOCK_CONTROL);

	/* Wait max 150 ms */
	timeout = FUNC0(FUNC2(), 150);
	while (1) {
		bool timedout = FUNC1(FUNC2(), timeout);

		clk = FUNC6(host, SDHCI_CLOCK_CONTROL);
		if (clk & SDHCI_CLOCK_INT_STABLE)
			break;
		if (timedout) {
			FUNC4("%s: Internal clock never stabilised.\n",
			       FUNC3(host->mmc));
			FUNC5(host);
			return;
		}
		FUNC8(10);
	}

	if (host->version >= SDHCI_SPEC_410 && host->v4_mode) {
		clk |= SDHCI_CLOCK_PLL_EN;
		clk &= ~SDHCI_CLOCK_INT_STABLE;
		FUNC7(host, clk, SDHCI_CLOCK_CONTROL);

		/* Wait max 150 ms */
		timeout = FUNC0(FUNC2(), 150);
		while (1) {
			bool timedout = FUNC1(FUNC2(), timeout);

			clk = FUNC6(host, SDHCI_CLOCK_CONTROL);
			if (clk & SDHCI_CLOCK_INT_STABLE)
				break;
			if (timedout) {
				FUNC4("%s: PLL clock never stabilised.\n",
				       FUNC3(host->mmc));
				FUNC5(host);
				return;
			}
			FUNC8(10);
		}
	}

	clk |= SDHCI_CLOCK_CARD_EN;
	FUNC7(host, clk, SDHCI_CLOCK_CONTROL);
}