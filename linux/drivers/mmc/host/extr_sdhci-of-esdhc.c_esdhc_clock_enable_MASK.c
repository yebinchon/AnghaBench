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
 int ESDHC_CLOCK_SDCLKEN ; 
 int ESDHC_CLOCK_STABLE ; 
 int /*<<< orphan*/  ESDHC_PRSSTAT ; 
 int /*<<< orphan*/  ESDHC_SYSTEM_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct sdhci_host *host, bool enable)
{
	u32 val;
	ktime_t timeout;

	val = FUNC5(host, ESDHC_SYSTEM_CONTROL);

	if (enable)
		val |= ESDHC_CLOCK_SDCLKEN;
	else
		val &= ~ESDHC_CLOCK_SDCLKEN;

	FUNC6(host, val, ESDHC_SYSTEM_CONTROL);

	/* Wait max 20 ms */
	timeout = FUNC0(FUNC2(), 20);
	val = ESDHC_CLOCK_STABLE;
	while  (1) {
		bool timedout = FUNC1(FUNC2(), timeout);

		if (FUNC5(host, ESDHC_PRSSTAT) & val)
			break;
		if (timedout) {
			FUNC4("%s: Internal clock never stabilised.\n",
				FUNC3(host->mmc));
			break;
		}
		FUNC7(10);
	}
}