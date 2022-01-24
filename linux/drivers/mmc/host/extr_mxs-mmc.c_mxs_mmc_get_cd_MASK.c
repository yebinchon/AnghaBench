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
struct mxs_ssp {scalar_t__ base; } ;
struct mxs_mmc_host {scalar_t__ broken_cd; struct mxs_ssp ssp; } ;
struct mmc_host {int caps; int caps2; } ;

/* Variables and functions */
 int BM_SSP_STATUS_CARD_DETECT ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (struct mxs_ssp*) ; 
 int MMC_CAP2_CD_ACTIVE_HIGH ; 
 int MMC_CAP_NEEDS_POLL ; 
 int FUNC1 (struct mmc_host*) ; 
 struct mxs_mmc_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct mxs_mmc_host *host = FUNC2(mmc);
	struct mxs_ssp *ssp = &host->ssp;
	int present, ret;

	if (host->broken_cd)
		return -ENOSYS;

	ret = FUNC1(mmc);
	if (ret >= 0)
		return ret;

	present = mmc->caps & MMC_CAP_NEEDS_POLL ||
		!(FUNC3(ssp->base + FUNC0(ssp)) &
			BM_SSP_STATUS_CARD_DETECT);

	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
		present = !present;

	return present;
}