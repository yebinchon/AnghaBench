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
typedef  int u16 ;
struct rtsx_usb_sdmmc {int card_exist; scalar_t__ host_removal; struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int /*<<< orphan*/  dev_mutex; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int SD_CD ; 
 struct rtsx_usb_sdmmc* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rtsx_ucr*,int*) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct rtsx_usb_sdmmc *host = FUNC0(mmc);
	struct rtsx_ucr *ucr = host->ucr;
	int err;
	u16 val;

	if (host->host_removal)
		return -ENOMEDIUM;

	FUNC1(&ucr->dev_mutex);

	/* Check SD card detect */
	err = FUNC3(ucr, &val);

	FUNC2(&ucr->dev_mutex);

	/* Treat failed detection as non-exist */
	if (err)
		goto no_card;

	if (val & SD_CD) {
		host->card_exist = true;
		return 1;
	}

no_card:
	host->card_exist = false;
	return 0;
}