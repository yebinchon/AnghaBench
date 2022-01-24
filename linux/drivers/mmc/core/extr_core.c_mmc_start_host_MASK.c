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
struct TYPE_2__ {int /*<<< orphan*/  power_mode; } ;
struct mmc_host {int caps2; int /*<<< orphan*/  ocr_avail; TYPE_1__ ios; scalar_t__ rescan_disable; int /*<<< orphan*/  f_min; int /*<<< orphan*/  f_init; } ;

/* Variables and functions */
 int MMC_CAP2_NO_PRESCAN_POWERUP ; 
 int /*<<< orphan*/  MMC_POWER_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * freqs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 

void FUNC6(struct mmc_host *host)
{
	host->f_init = FUNC1(freqs[0], host->f_min);
	host->rescan_disable = 0;
	host->ios.power_mode = MMC_POWER_UNDEFINED;

	if (!(host->caps2 & MMC_CAP2_NO_PRESCAN_POWERUP)) {
		FUNC2(host);
		FUNC4(host, host->ocr_avail);
		FUNC5(host);
	}

	FUNC3(host);
	FUNC0(host, 0, false);
}