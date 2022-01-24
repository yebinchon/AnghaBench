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
typedef  int u32 ;
struct usdhi6_host {scalar_t__ rate; } ;
struct mmc_ios {scalar_t__ clock; int power_mode; int /*<<< orphan*/  timing; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_BUS_WIDTH_1 ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  MMC_TIMING_UHS_DDR50 ; 
 int /*<<< orphan*/  USDHI6_SDIF_MODE ; 
 int /*<<< orphan*/  USDHI6_SD_OPTION ; 
 int USDHI6_SD_OPTION_WIDTH_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct usdhi6_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct usdhi6_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC5 (struct usdhi6_host*) ; 
 int FUNC6 (struct usdhi6_host*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usdhi6_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct usdhi6_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC9 (struct usdhi6_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct usdhi6_host *host = FUNC3(mmc);
	u32 option, mode;
	int ret;

	FUNC0(FUNC2(mmc), "%uHz, OCR: %u, power %u, bus-width %u, timing %u\n",
		ios->clock, ios->vdd, ios->power_mode, ios->bus_width, ios->timing);

	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		FUNC8(host, ios);
		FUNC5(host);
		break;
	case MMC_POWER_UP:
		/*
		 * We only also touch USDHI6_SD_OPTION from .request(), which
		 * cannot race with MMC_POWER_UP
		 */
		ret = FUNC7(host);
		if (ret < 0) {
			FUNC1(FUNC2(mmc), "Cannot reset the interface!\n");
		} else {
			FUNC8(host, ios);
			FUNC5(host);
		}
		break;
	case MMC_POWER_ON:
		option = FUNC6(host, USDHI6_SD_OPTION);
		/*
		 * The eMMC standard only allows 4 or 8 bits in the DDR mode,
		 * the same probably holds for SD cards. We check here anyway,
		 * since the datasheet explicitly requires 4 bits for DDR.
		 */
		if (ios->bus_width == MMC_BUS_WIDTH_1) {
			if (ios->timing == MMC_TIMING_UHS_DDR50)
				FUNC1(FUNC2(mmc),
					"4 bits are required for DDR\n");
			option |= USDHI6_SD_OPTION_WIDTH_1;
			mode = 0;
		} else {
			option &= ~USDHI6_SD_OPTION_WIDTH_1;
			mode = ios->timing == MMC_TIMING_UHS_DDR50;
		}
		FUNC9(host, USDHI6_SD_OPTION, option);
		FUNC9(host, USDHI6_SDIF_MODE, mode);
		break;
	}

	if (host->rate != ios->clock)
		FUNC4(host, ios);
}