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
struct sdhci_host {int flags; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ timing; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;

/* Variables and functions */
 scalar_t__ MMC_TIMING_MMC_HS400 ; 
 int SDHCI_HS400_TUNING ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host)
{
	struct mmc_ios ios = host->mmc->ios;

	if (ios.timing == MMC_TIMING_MMC_HS400 ||
	    host->flags & SDHCI_HS400_TUNING)
		FUNC1(host);
	else
		FUNC0(host);
}