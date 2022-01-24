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
struct mmc_ios {unsigned short vdd; unsigned long clock; int bus_width; int power_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; int /*<<< orphan*/  actual_clock; } ;
struct meson_mx_mmc_host {scalar_t__ error; int /*<<< orphan*/  cfg_div_clk; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESON_MX_SDIO_CONF ; 
 int /*<<< orphan*/  MESON_MX_SDIO_CONF_BUS_WIDTH ; 
#define  MMC_BUS_WIDTH_1 132 
#define  MMC_BUS_WIDTH_4 131 
#define  MMC_BUS_WIDTH_8 130 
#define  MMC_POWER_OFF 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct meson_mx_mmc_host* FUNC7 (struct mmc_host*) ; 
 scalar_t__ FUNC8 (struct mmc_host*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct meson_mx_mmc_host *host = FUNC7(mmc);
	unsigned short vdd = ios->vdd;
	unsigned long clk_rate = ios->clock;

	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_1:
		FUNC5(mmc, MESON_MX_SDIO_CONF,
				       MESON_MX_SDIO_CONF_BUS_WIDTH, 0);
		break;

	case MMC_BUS_WIDTH_4:
		FUNC5(mmc, MESON_MX_SDIO_CONF,
				       MESON_MX_SDIO_CONF_BUS_WIDTH,
				       MESON_MX_SDIO_CONF_BUS_WIDTH);
		break;

	case MMC_BUS_WIDTH_8:
	default:
		FUNC3(FUNC6(mmc), "unsupported bus width: %d\n",
			ios->bus_width);
		host->error = -EINVAL;
		return;
	}

	host->error = FUNC2(host->cfg_div_clk, ios->clock);
	if (host->error) {
		FUNC4(FUNC6(mmc),
				"failed to set MMC clock to %lu: %d\n",
				clk_rate, host->error);
		return;
	}

	mmc->actual_clock = FUNC1(host->cfg_div_clk);

	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		vdd = 0;
		/* fall through */
	case MMC_POWER_UP:
		if (!FUNC0(mmc->supply.vmmc)) {
			host->error = FUNC8(mmc,
							    mmc->supply.vmmc,
							    vdd);
			if (host->error)
				return;
		}
		break;
	}
}