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
typedef  int u32 ;
struct omap_hsmmc_host {int /*<<< orphan*/  base; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ timing; int bus_width; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON ; 
 int DDR ; 
 int DW8 ; 
 int FOUR_BIT ; 
 int /*<<< orphan*/  HCTL ; 
#define  MMC_BUS_WIDTH_1 130 
#define  MMC_BUS_WIDTH_4 129 
#define  MMC_BUS_WIDTH_8 128 
 scalar_t__ MMC_TIMING_MMC_DDR52 ; 
 scalar_t__ MMC_TIMING_UHS_DDR50 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct omap_hsmmc_host *host)
{
	struct mmc_ios *ios = &host->mmc->ios;
	u32 con;

	con = FUNC0(host->base, CON);
	if (ios->timing == MMC_TIMING_MMC_DDR52 ||
	    ios->timing == MMC_TIMING_UHS_DDR50)
		con |= DDR;	/* configure in DDR mode */
	else
		con &= ~DDR;
	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_8:
		FUNC1(host->base, CON, con | DW8);
		break;
	case MMC_BUS_WIDTH_4:
		FUNC1(host->base, CON, con & ~DW8);
		FUNC1(host->base, HCTL,
			FUNC0(host->base, HCTL) | FOUR_BIT);
		break;
	case MMC_BUS_WIDTH_1:
		FUNC1(host->base, CON, con & ~DW8);
		FUNC1(host->base, HCTL,
			FUNC0(host->base, HCTL) & ~FOUR_BIT);
		break;
	}
}