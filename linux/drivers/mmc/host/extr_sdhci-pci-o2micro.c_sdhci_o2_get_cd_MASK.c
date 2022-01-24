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
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2_PLL_DLL_WDT_CONTROL1 ; 
 int O2_PLL_LOCK_STATUS ; 
 int SDHCI_CARD_PRESENT ; 
 int /*<<< orphan*/  SDHCI_PRESENT_STATE ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct sdhci_host *host = FUNC0(mmc);

	if (!(FUNC3(host, O2_PLL_DLL_WDT_CONTROL1) & O2_PLL_LOCK_STATUS))
		FUNC1(host);

	return !!(FUNC2(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT);
}