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
struct mxcmci_host {int burstlen; scalar_t__ power_mode; int /*<<< orphan*/  clock; int /*<<< orphan*/  cmdat; int /*<<< orphan*/ * dma; scalar_t__ do_dma; int /*<<< orphan*/  mmc; } ;
struct mmc_ios {scalar_t__ bus_width; scalar_t__ power_mode; int /*<<< orphan*/  clock; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DAT_CONT_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  CMD_DAT_CONT_INIT ; 
 scalar_t__ MMC_BUS_WIDTH_4 ; 
 scalar_t__ MMC_POWER_ON ; 
 int /*<<< orphan*/  MMC_REG_STR_STP_CLK ; 
 int /*<<< orphan*/  STR_STP_CLK_START_CLK ; 
 int /*<<< orphan*/  STR_STP_CLK_STOP_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mxcmci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxcmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mxcmci_host*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mmc_host*) ; 
 scalar_t__ FUNC7 (struct mxcmci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mxcmci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct mxcmci_host *host = FUNC3(mmc);
	int burstlen, ret;

	/*
	 * use burstlen of 64 (16 words) in 4 bit mode (--> reg value  0)
	 * use burstlen of 16 (4 words) in 1 bit mode (--> reg value 16)
	 */
	if (ios->bus_width == MMC_BUS_WIDTH_4)
		burstlen = 16;
	else
		burstlen = 4;

	if (FUNC7(host) && burstlen != host->burstlen) {
		host->burstlen = burstlen;
		ret = FUNC6(mmc);
		if (ret) {
			FUNC0(FUNC2(host->mmc),
				"failed to config DMA channel. Falling back to PIO\n");
			FUNC1(host->dma);
			host->do_dma = 0;
			host->dma = NULL;
		}
	}

	if (ios->bus_width == MMC_BUS_WIDTH_4)
		host->cmdat |= CMD_DAT_CONT_BUS_WIDTH_4;
	else
		host->cmdat &= ~CMD_DAT_CONT_BUS_WIDTH_4;

	if (host->power_mode != ios->power_mode) {
		host->power_mode = ios->power_mode;
		FUNC5(host, ios->vdd);

		if (ios->power_mode == MMC_POWER_ON)
			host->cmdat |= CMD_DAT_CONT_INIT;
	}

	if (ios->clock) {
		FUNC4(host, ios->clock);
		FUNC8(host, STR_STP_CLK_START_CLK, MMC_REG_STR_STP_CLK);
	} else {
		FUNC8(host, STR_STP_CLK_STOP_CLK, MMC_REG_STR_STP_CLK);
	}

	host->clock = ios->clock;
}