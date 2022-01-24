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
struct sunxi_mmc_host {int /*<<< orphan*/  ferror; } ;
struct mmc_ios {scalar_t__ timing; } ;

/* Variables and functions */
 scalar_t__ MMC_TIMING_MMC_DDR52 ; 
 scalar_t__ MMC_TIMING_UHS_DDR50 ; 
 int /*<<< orphan*/  REG_GCTRL ; 
 int /*<<< orphan*/  SDXC_DDR_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sunxi_mmc_host*,struct mmc_ios*) ; 

__attribute__((used)) static void FUNC3(struct sunxi_mmc_host *host, struct mmc_ios *ios)
{
	u32 rval;

	/* set ddr mode */
	rval = FUNC0(host, REG_GCTRL);
	if (ios->timing == MMC_TIMING_UHS_DDR50 ||
	    ios->timing == MMC_TIMING_MMC_DDR52)
		rval |= SDXC_DDR_MODE;
	else
		rval &= ~SDXC_DDR_MODE;
	FUNC1(host, REG_GCTRL, rval);

	host->ferror = FUNC2(host, ios);
	/* Android code had a usleep_range(50000, 55000); here */
}