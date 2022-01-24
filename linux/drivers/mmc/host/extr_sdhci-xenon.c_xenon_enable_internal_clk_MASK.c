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
typedef  int u32 ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_CLOCK_INT_EN ; 
 int SDHCI_CLOCK_INT_STABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct sdhci_host *host)
{
	u32 reg;
	ktime_t timeout;

	reg = FUNC5(host, SDHCI_CLOCK_CONTROL);
	reg |= SDHCI_CLOCK_INT_EN;
	FUNC7(host, reg, SDHCI_CLOCK_CONTROL);
	/* Wait max 20 ms */
	timeout = FUNC1(FUNC3(), 20);
	while (1) {
		bool timedout = FUNC2(FUNC3(), timeout);

		reg = FUNC6(host, SDHCI_CLOCK_CONTROL);
		if (reg & SDHCI_CLOCK_INT_STABLE)
			break;
		if (timedout) {
			FUNC0(FUNC4(host->mmc), "Internal clock never stabilised.\n");
			return -ETIMEDOUT;
		}
		FUNC8(900, 1100);
	}

	return 0;
}