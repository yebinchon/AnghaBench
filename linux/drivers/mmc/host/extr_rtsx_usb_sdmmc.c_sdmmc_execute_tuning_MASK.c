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
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_usb_sdmmc {int /*<<< orphan*/  ddr_mode; scalar_t__ host_removal; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int /*<<< orphan*/  dev_mutex; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int /*<<< orphan*/  MMC_SEND_TUNING_BLOCK ; 
 struct rtsx_usb_sdmmc* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rtsx_usb_sdmmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc, u32 opcode)
{
	struct rtsx_usb_sdmmc *host = FUNC0(mmc);
	struct rtsx_ucr *ucr = host->ucr;
	int err = 0;

	if (host->host_removal)
		return -ENOMEDIUM;

	FUNC1(&ucr->dev_mutex);

	if (!host->ddr_mode)
		err = FUNC3(host, MMC_SEND_TUNING_BLOCK);

	FUNC2(&ucr->dev_mutex);

	return err;
}