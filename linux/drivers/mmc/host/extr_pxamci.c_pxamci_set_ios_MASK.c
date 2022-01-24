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
struct pxamci_host {unsigned long clkrate; scalar_t__ clkrt; int /*<<< orphan*/  cmdat; int /*<<< orphan*/  power_mode; int /*<<< orphan*/  clk; } ;
struct mmc_ios {int clock; scalar_t__ bus_width; int /*<<< orphan*/  power_mode; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ CLKRT_OFF ; 
 int /*<<< orphan*/  CMDAT_INIT ; 
 int /*<<< orphan*/  CMDAT_SD_4DAT ; 
 scalar_t__ MMC_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  MMC_POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 struct pxamci_host* FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct pxamci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pxamci_host*) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct pxamci_host *host = FUNC6(mmc);

	if (ios->clock) {
		unsigned long rate = host->clkrate;
		unsigned int clk = rate / ios->clock;

		if (host->clkrt == CLKRT_OFF)
			FUNC1(host->clk);

		if (ios->clock == 26000000) {
			/* to support 26MHz */
			host->clkrt = 7;
		} else {
			/* to handle (19.5MHz, 26MHz) */
			if (!clk)
				clk = 1;

			/*
			 * clk might result in a lower divisor than we
			 * desire.  check for that condition and adjust
			 * as appropriate.
			 */
			if (rate / clk > ios->clock)
				clk <<= 1;
			host->clkrt = FUNC4(clk) - 1;
		}

		/*
		 * we write clkrt on the next command
		 */
	} else {
		FUNC8(host);
		if (host->clkrt != CLKRT_OFF) {
			host->clkrt = CLKRT_OFF;
			FUNC0(host->clk);
		}
	}

	if (host->power_mode != ios->power_mode) {
		int ret;

		host->power_mode = ios->power_mode;

		ret = FUNC7(host, ios->power_mode, ios->vdd);
		if (ret) {
			FUNC3(FUNC5(mmc), "unable to set power\n");
			/*
			 * The .set_ios() function in the mmc_host_ops
			 * struct return void, and failing to set the
			 * power should be rare so we print an error and
			 * return here.
			 */
			return;
		}

		if (ios->power_mode == MMC_POWER_ON)
			host->cmdat |= CMDAT_INIT;
	}

	if (ios->bus_width == MMC_BUS_WIDTH_4)
		host->cmdat |= CMDAT_SD_4DAT;
	else
		host->cmdat &= ~CMDAT_SD_4DAT;

	FUNC2(FUNC5(mmc), "PXAMCI: clkrt = %x cmdat = %x\n",
		host->clkrt, host->cmdat);
}