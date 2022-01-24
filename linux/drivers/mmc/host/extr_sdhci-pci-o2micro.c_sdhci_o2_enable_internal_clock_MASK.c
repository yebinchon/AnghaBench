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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  O2_PLL_DLL_WDT_CONTROL1 ; 
 int /*<<< orphan*/  O2_PLL_FORCE_ACTIVE ; 
 int O2_PLL_LOCK_STATUS ; 
 int /*<<< orphan*/  O2_PLL_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct sdhci_host *host)
{
	ktime_t timeout;
	u16 scratch;
	u32 scratch32;

	/* PLL software reset */
	scratch32 = FUNC7(host, O2_PLL_DLL_WDT_CONTROL1);
	scratch32 |= O2_PLL_SOFT_RESET;
	FUNC9(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);
	FUNC10(1);
	scratch32 &= ~(O2_PLL_SOFT_RESET);
	FUNC9(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);

	/* PLL force active */
	scratch32 |= O2_PLL_FORCE_ACTIVE;
	FUNC9(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);

	/* Wait max 20 ms */
	timeout = FUNC0(FUNC2(), 20);
	while (1) {
		bool timedout = FUNC1(FUNC2(), timeout);

		scratch = FUNC8(host, O2_PLL_DLL_WDT_CONTROL1);
		if (scratch & O2_PLL_LOCK_STATUS)
			break;
		if (timedout) {
			FUNC4("%s: Internal clock never stabilised.\n",
			       FUNC3(host->mmc));
			FUNC5(host);
			goto out;
		}
		FUNC10(10);
	}

	/* Wait for card detect finish */
	FUNC10(1);
	FUNC6(host);

out:
	/* Cancel PLL force active */
	scratch32 = FUNC7(host, O2_PLL_DLL_WDT_CONTROL1);
	scratch32 &= ~O2_PLL_FORCE_ACTIVE;
	FUNC9(host, scratch32, O2_PLL_DLL_WDT_CONTROL1);
}