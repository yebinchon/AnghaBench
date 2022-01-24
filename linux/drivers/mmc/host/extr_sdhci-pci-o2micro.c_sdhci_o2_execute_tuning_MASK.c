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
struct sdhci_host {scalar_t__ timing; int /*<<< orphan*/  flags; int /*<<< orphan*/  mmc; } ;
struct TYPE_2__ {int bus_width; } ;
struct mmc_host {TYPE_1__ ios; } ;

/* Variables and functions */
 int EINVAL ; 
 int MMC_BUS_WIDTH_4 ; 
 int MMC_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  MMC_SEND_TUNING_BLOCK_HS200 ; 
 scalar_t__ MMC_TIMING_MMC_HS200 ; 
 int /*<<< orphan*/  SDHCI_HS400_TUNING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int FUNC6 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC12(struct mmc_host *mmc, u32 opcode)
{
	struct sdhci_host *host = FUNC3(mmc);
	int current_bus_width = 0;

	/*
	 * This handler only implements the eMMC tuning that is specific to
	 * this controller.  Fall back to the standard method for other TIMING.
	 */
	if (host->timing != MMC_TIMING_MMC_HS200)
		return FUNC6(mmc, opcode);

	if (FUNC0(opcode != MMC_SEND_TUNING_BLOCK_HS200))
		return -EINVAL;
	/*
	 * Judge the tuning reason, whether caused by dll shift
	 * If cause by dll shift, should call sdhci_o2_dll_recovery
	 */
	if (!FUNC9(host))
		if (!FUNC7(host)) {
			FUNC4("%s: o2 dll recovery failed\n",
				FUNC2(host->mmc));
			return -EINVAL;
		}
	/*
	 * o2 sdhci host didn't support 8bit emmc tuning
	 */
	if (mmc->ios.bus_width == MMC_BUS_WIDTH_8) {
		current_bus_width = mmc->ios.bus_width;
		mmc->ios.bus_width = MMC_BUS_WIDTH_4;
		FUNC10(host, MMC_BUS_WIDTH_4);
	}

	FUNC8(host);

	FUNC11(host);

	FUNC1(host, opcode);

	FUNC5(host);

	if (current_bus_width == MMC_BUS_WIDTH_8) {
		mmc->ios.bus_width = MMC_BUS_WIDTH_8;
		FUNC10(host, current_bus_width);
	}

	host->flags &= ~SDHCI_HS400_TUNING;
	return 0;
}