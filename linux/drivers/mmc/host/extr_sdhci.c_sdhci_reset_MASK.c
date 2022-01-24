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
typedef  int u8 ;
struct sdhci_host {int quirks2; int /*<<< orphan*/  mmc; scalar_t__ clock; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON ; 
 int SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(struct sdhci_host *host, u8 mask)
{
	ktime_t timeout;

	FUNC8(host, mask, SDHCI_SOFTWARE_RESET);

	if (mask & SDHCI_RESET_ALL) {
		host->clock = 0;
		/* Reset-all turns off SD Bus Power */
		if (host->quirks2 & SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON)
			FUNC7(host);
	}

	/* Wait max 100 ms */
	timeout = FUNC0(FUNC2(), 100);

	/* hw clears the bit when it's done */
	while (1) {
		bool timedout = FUNC1(FUNC2(), timeout);

		if (!(FUNC6(host, SDHCI_SOFTWARE_RESET) & mask))
			break;
		if (timedout) {
			FUNC4("%s: Reset 0x%x never completed.\n",
				FUNC3(host->mmc), (int)mask);
			FUNC5(host);
			return;
		}
		FUNC9(10);
	}
}