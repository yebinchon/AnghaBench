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
struct rtsx_pcr {int /*<<< orphan*/  pcr_mutex; } ;
struct realtek_pci_sdmmc {int vpclk; int double_clk; int initial_mode; int clock; int /*<<< orphan*/  ssc_depth; struct rtsx_pcr* pcr; scalar_t__ eject; } ;
struct mmc_ios {int clock; int /*<<< orphan*/  timing; int /*<<< orphan*/  power_mode; int /*<<< orphan*/  bus_width; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
#define  MMC_TIMING_MMC_DDR52 132 
#define  MMC_TIMING_UHS_DDR50 131 
#define  MMC_TIMING_UHS_SDR104 130 
#define  MMC_TIMING_UHS_SDR25 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 int /*<<< orphan*/  RTSX_SSC_DEPTH_1M ; 
 int /*<<< orphan*/  RTSX_SSC_DEPTH_2M ; 
 int /*<<< orphan*/  RTSX_SSC_DEPTH_500K ; 
 struct realtek_pci_sdmmc* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_pcr*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct realtek_pci_sdmmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct realtek_pci_sdmmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct realtek_pci_sdmmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct realtek_pci_sdmmc *host = FUNC0(mmc);
	struct rtsx_pcr *pcr = host->pcr;

	if (host->eject)
		return;

	if (FUNC3(host->pcr, RTSX_SD_CARD))
		return;

	FUNC1(&pcr->pcr_mutex);

	FUNC4(pcr);

	FUNC6(host, ios->bus_width);
	FUNC7(host, ios->power_mode);
	FUNC8(host, ios->timing);

	host->vpclk = false;
	host->double_clk = true;

	switch (ios->timing) {
	case MMC_TIMING_UHS_SDR104:
	case MMC_TIMING_UHS_SDR50:
		host->ssc_depth = RTSX_SSC_DEPTH_2M;
		host->vpclk = true;
		host->double_clk = false;
		break;
	case MMC_TIMING_MMC_DDR52:
	case MMC_TIMING_UHS_DDR50:
	case MMC_TIMING_UHS_SDR25:
		host->ssc_depth = RTSX_SSC_DEPTH_1M;
		break;
	default:
		host->ssc_depth = RTSX_SSC_DEPTH_500K;
		break;
	}

	host->initial_mode = (ios->clock <= 1000000) ? true : false;

	host->clock = ios->clock;
	FUNC5(pcr, ios->clock, host->ssc_depth,
			host->initial_mode, host->double_clk, host->vpclk);

	FUNC2(&pcr->pcr_mutex);
}