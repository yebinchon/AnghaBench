#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enhanced_strobe; scalar_t__ drv_type; int /*<<< orphan*/  timing; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  bus_mode; int /*<<< orphan*/  chip_select; } ;
struct mmc_host {int caps2; TYPE_3__ ios; TYPE_2__* ops; TYPE_1__* cqe_ops; scalar_t__ cqe_on; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* hs400_enhanced_strobe ) (struct mmc_host*,TYPE_3__*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* cqe_off ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_BUSMODE_PUSHPULL ; 
 int /*<<< orphan*/  MMC_BUS_WIDTH_1 ; 
 int MMC_CAP2_HS400_ES ; 
 int /*<<< orphan*/  MMC_CS_DONTCARE ; 
 int /*<<< orphan*/  MMC_CS_HIGH ; 
 int /*<<< orphan*/  MMC_TIMING_LEGACY ; 
 scalar_t__ FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,TYPE_3__*) ; 

void FUNC5(struct mmc_host *host)
{
	if (host->cqe_on)
		host->cqe_ops->cqe_off(host);

	FUNC1(host);

	if (FUNC0(host))
		host->ios.chip_select = MMC_CS_HIGH;
	else
		host->ios.chip_select = MMC_CS_DONTCARE;
	host->ios.bus_mode = MMC_BUSMODE_PUSHPULL;
	host->ios.bus_width = MMC_BUS_WIDTH_1;
	host->ios.timing = MMC_TIMING_LEGACY;
	host->ios.drv_type = 0;
	host->ios.enhanced_strobe = false;

	/*
	 * Make sure we are in non-enhanced strobe mode before we
	 * actually enable it in ext_csd.
	 */
	if ((host->caps2 & MMC_CAP2_HS400_ES) &&
	     host->ops->hs400_enhanced_strobe)
		host->ops->hs400_enhanced_strobe(host, &host->ios);

	FUNC2(host);
}