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
struct msdc_host {int vqmmc_enabled; scalar_t__ timing; int /*<<< orphan*/  mclk; int /*<<< orphan*/  dev; } ;
struct mmc_ios {int power_mode; scalar_t__ timing; int /*<<< orphan*/  clock; int /*<<< orphan*/  vdd; int /*<<< orphan*/  bus_width; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct msdc_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msdc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msdc_host*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct msdc_host *host = FUNC2(mmc);
	int ret;

	FUNC5(host, ios->bus_width);

	/* Suspend/Resume will do power off/on */
	switch (ios->power_mode) {
	case MMC_POWER_UP:
		if (!FUNC0(mmc->supply.vmmc)) {
			FUNC4(host);
			ret = FUNC3(mmc, mmc->supply.vmmc,
					ios->vdd);
			if (ret) {
				FUNC1(host->dev, "Failed to set vmmc power!\n");
				return;
			}
		}
		break;
	case MMC_POWER_ON:
		if (!FUNC0(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
			ret = FUNC8(mmc->supply.vqmmc);
			if (ret)
				FUNC1(host->dev, "Failed to set vqmmc power!\n");
			else
				host->vqmmc_enabled = true;
		}
		break;
	case MMC_POWER_OFF:
		if (!FUNC0(mmc->supply.vmmc))
			FUNC3(mmc, mmc->supply.vmmc, 0);

		if (!FUNC0(mmc->supply.vqmmc) && host->vqmmc_enabled) {
			FUNC7(mmc->supply.vqmmc);
			host->vqmmc_enabled = false;
		}
		break;
	default:
		break;
	}

	if (host->mclk != ios->clock || host->timing != ios->timing)
		FUNC6(host, ios->timing, ios->clock);
}