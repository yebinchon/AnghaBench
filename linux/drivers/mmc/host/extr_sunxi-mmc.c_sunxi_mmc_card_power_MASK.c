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
struct sunxi_mmc_host {int vqmmc_enabled; int /*<<< orphan*/  ferror; struct mmc_host* mmc; } ;
struct mmc_ios {int power_mode; int /*<<< orphan*/  vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MMC_POWER_OFF 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sunxi_mmc_host *host,
				 struct mmc_ios *ios)
{
	struct mmc_host *mmc = host->mmc;

	switch (ios->power_mode) {
	case MMC_POWER_UP:
		FUNC1(FUNC3(mmc), "Powering card up\n");

		if (!FUNC0(mmc->supply.vmmc)) {
			host->ferror = FUNC4(mmc,
							     mmc->supply.vmmc,
							     ios->vdd);
			if (host->ferror)
				return;
		}

		if (!FUNC0(mmc->supply.vqmmc)) {
			host->ferror = FUNC6(mmc->supply.vqmmc);
			if (host->ferror) {
				FUNC2(FUNC3(mmc),
					"failed to enable vqmmc\n");
				return;
			}
			host->vqmmc_enabled = true;
		}
		break;

	case MMC_POWER_OFF:
		FUNC1(FUNC3(mmc), "Powering card off\n");

		if (!FUNC0(mmc->supply.vmmc))
			FUNC4(mmc, mmc->supply.vmmc, 0);

		if (!FUNC0(mmc->supply.vqmmc) && host->vqmmc_enabled)
			FUNC5(mmc->supply.vqmmc);

		host->vqmmc_enabled = false;
		break;

	default:
		FUNC1(FUNC3(mmc), "Ignoring unknown card power state\n");
		break;
	}
}