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
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_pcr {int /*<<< orphan*/  pcr_mutex; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; scalar_t__ eject; } ;
struct TYPE_2__ {int timing; } ;
struct mmc_host {TYPE_1__ ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int ENOMEDIUM ; 
#define  MMC_TIMING_UHS_DDR50 130 
#define  MMC_TIMING_UHS_SDR104 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 struct realtek_pci_sdmmc* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_pcr*) ; 
 int FUNC9 (struct realtek_pci_sdmmc*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct realtek_pci_sdmmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mmc_host *mmc, u32 opcode)
{
	struct realtek_pci_sdmmc *host = FUNC4(mmc);
	struct rtsx_pcr *pcr = host->pcr;
	int err = 0;

	if (host->eject)
		return -ENOMEDIUM;

	err = FUNC7(host->pcr, RTSX_SD_CARD);
	if (err)
		return err;

	FUNC5(&pcr->pcr_mutex);

	FUNC8(pcr);

	/* Set initial TX phase */
	switch (mmc->ios.timing) {
	case MMC_TIMING_UHS_SDR104:
		err = FUNC9(host, FUNC2(pcr), false);
		break;

	case MMC_TIMING_UHS_SDR50:
		err = FUNC9(host, FUNC3(pcr), false);
		break;

	case MMC_TIMING_UHS_DDR50:
		err = FUNC9(host, FUNC1(pcr), false);
		break;

	default:
		err = 0;
	}

	if (err)
		goto out;

	/* Tuning RX phase */
	if ((mmc->ios.timing == MMC_TIMING_UHS_SDR104) ||
			(mmc->ios.timing == MMC_TIMING_UHS_SDR50))
		err = FUNC10(host, opcode);
	else if (mmc->ios.timing == MMC_TIMING_UHS_DDR50)
		err = FUNC9(host, FUNC0(pcr), true);

out:
	FUNC6(&pcr->pcr_mutex);

	return err;
}