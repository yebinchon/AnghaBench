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
struct mmc_host {int actual_clock; } ;
struct meson_host {int ddr; unsigned long req_rate; int /*<<< orphan*/  dev; int /*<<< orphan*/  mmc_clk; scalar_t__ regs; struct mmc_host* mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_DDR ; 
 int /*<<< orphan*/  CFG_STOP_CLOCK ; 
 scalar_t__ SD_EMMC_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_host*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct meson_host *host, unsigned long rate,
			     bool ddr)
{
	struct mmc_host *mmc = host->mmc;
	int ret;
	u32 cfg;

	/* Same request - bail-out */
	if (host->ddr == ddr && host->req_rate == rate)
		return 0;

	/* stop clock */
	FUNC4(host);
	host->req_rate = 0;
	mmc->actual_clock = 0;

	/* return with clock being stopped */
	if (!rate)
		return 0;

	/* Stop the clock during rate change to avoid glitches */
	cfg = FUNC6(host->regs + SD_EMMC_CFG);
	cfg |= CFG_STOP_CLOCK;
	FUNC7(cfg, host->regs + SD_EMMC_CFG);

	if (ddr) {
		/* DDR modes require higher module clock */
		rate <<= 1;
		cfg |= CFG_DDR;
	} else {
		cfg &= ~CFG_DDR;
	}
	FUNC7(cfg, host->regs + SD_EMMC_CFG);
	host->ddr = ddr;

	ret = FUNC1(host->mmc_clk, rate);
	if (ret) {
		FUNC3(host->dev, "Unable to set cfg_div_clk to %lu. ret=%d\n",
			rate, ret);
		return ret;
	}

	host->req_rate = rate;
	mmc->actual_clock = FUNC0(host->mmc_clk);

	/* We should report the real output frequency of the controller */
	if (ddr) {
		host->req_rate >>= 1;
		mmc->actual_clock >>= 1;
	}

	FUNC2(host->dev, "clk rate: %u Hz\n", mmc->actual_clock);
	if (rate != mmc->actual_clock)
		FUNC2(host->dev, "requested rate was %lu\n", rate);

	/* (re)start clock */
	FUNC5(host);

	return 0;
}