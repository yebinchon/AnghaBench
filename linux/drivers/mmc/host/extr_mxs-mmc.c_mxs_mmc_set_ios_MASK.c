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
struct mxs_mmc_host {int bus_width; int /*<<< orphan*/  ssp; } ;
struct mmc_ios {scalar_t__ bus_width; int /*<<< orphan*/  clock; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ MMC_BUS_WIDTH_4 ; 
 scalar_t__ MMC_BUS_WIDTH_8 ; 
 struct mxs_mmc_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct mxs_mmc_host *host = FUNC0(mmc);

	if (ios->bus_width == MMC_BUS_WIDTH_8)
		host->bus_width = 2;
	else if (ios->bus_width == MMC_BUS_WIDTH_4)
		host->bus_width = 1;
	else
		host->bus_width = 0;

	if (ios->clock)
		FUNC1(&host->ssp, ios->clock);
}