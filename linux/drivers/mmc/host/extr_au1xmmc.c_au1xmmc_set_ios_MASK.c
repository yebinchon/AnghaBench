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
struct mmc_ios {scalar_t__ power_mode; scalar_t__ clock; int bus_width; } ;
struct mmc_host {int dummy; } ;
struct au1xmmc_host {scalar_t__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
#define  MMC_BUS_WIDTH_1 130 
#define  MMC_BUS_WIDTH_4 129 
#define  MMC_BUS_WIDTH_8 128 
 scalar_t__ MMC_POWER_OFF ; 
 scalar_t__ MMC_POWER_ON ; 
 int SD_CONFIG2_BB ; 
 int SD_CONFIG2_WB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct au1xmmc_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xmmc_host*,int) ; 
 struct au1xmmc_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct au1xmmc_host *host = FUNC5(mmc);
	u32 config2;

	if (ios->power_mode == MMC_POWER_OFF)
		FUNC4(host, 0);
	else if (ios->power_mode == MMC_POWER_ON) {
		FUNC4(host, 1);
	}

	if (ios->clock && ios->clock != host->clock) {
		FUNC3(host, ios->clock);
		host->clock = ios->clock;
	}

	config2 = FUNC1(FUNC0(host));
	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_8:
		config2 |= SD_CONFIG2_BB;
		break;
	case MMC_BUS_WIDTH_4:
		config2 &= ~SD_CONFIG2_BB;
		config2 |= SD_CONFIG2_WB;
		break;
	case MMC_BUS_WIDTH_1:
		config2 &= ~(SD_CONFIG2_WB | SD_CONFIG2_BB);
		break;
	}
	FUNC2(config2, FUNC0(host));
	FUNC6(); /* drain writebuffer */
}