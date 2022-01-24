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
struct sdhci_host {unsigned int timing; } ;
struct mmc_ios {unsigned int timing; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 unsigned int MMC_TIMING_MMC_HS ; 
 unsigned int MMC_TIMING_MMC_HS200 ; 
 unsigned int MMC_TIMING_MMC_HS400 ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC0(mmc);
	unsigned int old_timing = host->timing;

	FUNC2(mmc, ios);
	if (old_timing == MMC_TIMING_MMC_HS200 &&
	    ios->timing == MMC_TIMING_MMC_HS)
		FUNC3(host, 0x9, SDHCI_HOST_CONTROL2);
	if (old_timing != MMC_TIMING_MMC_HS400 &&
	    ios->timing == MMC_TIMING_MMC_HS400) {
		FUNC3(host, 0x80, SDHCI_HOST_CONTROL2);
		FUNC1(host);
	}
}