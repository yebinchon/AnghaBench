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
struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int /*<<< orphan*/  cmd_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU6601_OPT ; 
 int /*<<< orphan*/  AU6601_OPT_SD_18V ; 
#define  MMC_SIGNAL_VOLTAGE_180 129 
#define  MMC_SIGNAL_VOLTAGE_330 128 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct alcor_sdmmc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc,
				       struct mmc_ios *ios)
{
	struct alcor_sdmmc_host *host = FUNC1(mmc);

	FUNC2(&host->cmd_mutex);

	switch (ios->signal_voltage) {
	case MMC_SIGNAL_VOLTAGE_330:
		FUNC0(host, AU6601_OPT, AU6601_OPT_SD_18V, 0);
		break;
	case MMC_SIGNAL_VOLTAGE_180:
		FUNC0(host, AU6601_OPT, 0, AU6601_OPT_SD_18V);
		break;
	default:
		/* No signal voltage switch required */
		break;
	}

	FUNC3(&host->cmd_mutex);
	return 0;
}