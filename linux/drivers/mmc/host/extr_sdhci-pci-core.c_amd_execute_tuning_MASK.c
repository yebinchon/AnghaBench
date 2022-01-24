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
struct sdhci_host {scalar_t__ timing; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ MMC_TIMING_MMC_HS200 ; 
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct mmc_host*) ; 
 int FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *mmc, u32 opcode)
{
	struct sdhci_host *host = FUNC1(mmc);

	/* AMD requires custom HS200 tuning */
	if (host->timing == MMC_TIMING_MMC_HS200)
		return FUNC0(host, opcode);

	/* Otherwise perform standard SDHCI tuning */
	return FUNC2(mmc, opcode);
}