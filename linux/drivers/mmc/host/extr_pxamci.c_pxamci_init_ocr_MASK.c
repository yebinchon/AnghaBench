#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pxamci_host {TYPE_2__* pdata; struct mmc_host* mmc; } ;
struct TYPE_3__ {int /*<<< orphan*/  vmmc; } ;
struct mmc_host {int ocr_avail; TYPE_1__ supply; } ;
struct TYPE_4__ {int ocr_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int FUNC1 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC2(struct pxamci_host *host)
{
	struct mmc_host *mmc = host->mmc;
	int ret;

	ret = FUNC1(mmc);
	if (ret < 0)
		return ret;

	if (FUNC0(mmc->supply.vmmc)) {
		/* fall-back to platform data */
		mmc->ocr_avail = host->pdata ?
			host->pdata->ocr_mask :
			MMC_VDD_32_33 | MMC_VDD_33_34;
	}

	return 0;
}