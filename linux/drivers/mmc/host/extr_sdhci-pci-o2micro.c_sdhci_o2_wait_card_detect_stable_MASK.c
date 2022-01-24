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
 int SDHCI_CARD_PRESENT ; 
 int SDHCI_CARD_PRES_SHIFT ; 
 int SDHCI_CD_LVL ; 
 int SDHCI_CD_LVL_SHIFT ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct sdhci_host *host)
{
	ktime_t timeout;
	u32 scratch32;

	/* Wait max 50 ms */
	timeout = FUNC0(FUNC2(), 50);
	while (1) {
		bool timedout = FUNC1(FUNC2(), timeout);

		scratch32 = FUNC6(host, SDHCI_PRESENT_STATE);
		if ((scratch32 & SDHCI_CARD_PRESENT) >> SDHCI_CARD_PRES_SHIFT
		    == (scratch32 & SDHCI_CD_LVL) >> SDHCI_CD_LVL_SHIFT)
			break;

		if (timedout) {
			FUNC4("%s: Card Detect debounce never finished.\n",
			       FUNC3(host->mmc));
			FUNC5(host);
			return;
		}
		FUNC7(10);
	}
}