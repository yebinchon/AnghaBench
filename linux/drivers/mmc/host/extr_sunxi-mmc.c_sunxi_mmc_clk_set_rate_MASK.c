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
struct sunxi_mmc_host {scalar_t__ use_new_timings; int /*<<< orphan*/  clk_mmc; TYPE_1__* cfg; struct mmc_host* mmc; } ;
struct mmc_ios {int clock; scalar_t__ timing; scalar_t__ bus_width; } ;
struct mmc_host {long actual_clock; } ;
struct TYPE_2__ {scalar_t__ ccu_has_timings_switch; } ;

/* Variables and functions */
 scalar_t__ MMC_BUS_WIDTH_8 ; 
 scalar_t__ MMC_TIMING_MMC_DDR52 ; 
 int /*<<< orphan*/  REG_CLKCR ; 
 int /*<<< orphan*/  REG_SD_NTSR ; 
 int SDXC_2X_TIMING_MODE ; 
 int /*<<< orphan*/  SDXC_REG_SAMP_DL_REG ; 
 long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sunxi_mmc_host*,struct mmc_ios*,long) ; 
 int FUNC10 (struct sunxi_mmc_host*,int) ; 

__attribute__((used)) static int FUNC11(struct sunxi_mmc_host *host,
				  struct mmc_ios *ios)
{
	struct mmc_host *mmc = host->mmc;
	long rate;
	u32 rval, clock = ios->clock, div = 1;
	int ret;

	ret = FUNC10(host, 0);
	if (ret)
		return ret;

	/* Our clock is gated now */
	mmc->actual_clock = 0;

	if (!ios->clock)
		return 0;

	/*
	 * Under the old timing mode, 8 bit DDR requires the module
	 * clock to be double the card clock. Under the new timing
	 * mode, all DDR modes require a doubled module clock.
	 *
	 * We currently only support the standard MMC DDR52 mode.
	 * This block should be updated once support for other DDR
	 * modes is added.
	 */
	if (ios->timing == MMC_TIMING_MMC_DDR52 &&
	    (host->use_new_timings ||
	     ios->bus_width == MMC_BUS_WIDTH_8)) {
		div = 2;
		clock <<= 1;
	}

	if (host->use_new_timings && host->cfg->ccu_has_timings_switch) {
		ret = FUNC7(host->clk_mmc, true);
		if (ret) {
			FUNC3(FUNC4(mmc),
				"error setting new timing mode\n");
			return ret;
		}
	}

	rate = FUNC0(host->clk_mmc, clock);
	if (rate < 0) {
		FUNC3(FUNC4(mmc), "error rounding clk to %d: %ld\n",
			clock, rate);
		return rate;
	}
	FUNC2(FUNC4(mmc), "setting clk to %d, rounded %ld\n",
		clock, rate);

	/* setting clock rate */
	ret = FUNC1(host->clk_mmc, rate);
	if (ret) {
		FUNC3(FUNC4(mmc), "error setting clk to %ld: %d\n",
			rate, ret);
		return ret;
	}

	/* set internal divider */
	rval = FUNC5(host, REG_CLKCR);
	rval &= ~0xff;
	rval |= div - 1;
	FUNC6(host, REG_CLKCR, rval);

	/* update card clock rate to account for internal divider */
	rate /= div;

	/*
	 * Configure the controller to use the new timing mode if needed.
	 * On controllers that only support the new timing mode, such as
	 * the eMMC controller on the A64, this register does not exist,
	 * and any writes to it are ignored.
	 */
	if (host->use_new_timings) {
		/* Don't touch the delay bits */
		rval = FUNC5(host, REG_SD_NTSR);
		rval |= SDXC_2X_TIMING_MODE;
		FUNC6(host, REG_SD_NTSR, rval);
	}

	/* sunxi_mmc_clk_set_phase expects the actual card clock rate */
	ret = FUNC9(host, ios, rate);
	if (ret)
		return ret;

	ret = FUNC8(host, SDXC_REG_SAMP_DL_REG);
	if (ret)
		return ret;

	/*
	 * FIXME:
	 *
	 * In HS400 we'll also need to calibrate the data strobe
	 * signal. This should only happen on the MMC2 controller (at
	 * least on the A64).
	 */

	ret = FUNC10(host, 1);
	if (ret)
		return ret;

	/* And we just enabled our clock back */
	mmc->actual_clock = rate;

	return 0;
}