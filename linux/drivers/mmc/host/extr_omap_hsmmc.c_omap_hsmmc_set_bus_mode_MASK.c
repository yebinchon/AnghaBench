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
typedef  int u32 ;
struct omap_hsmmc_host {int /*<<< orphan*/  base; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ bus_mode; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON ; 
 scalar_t__ MMC_BUSMODE_OPENDRAIN ; 
 int OD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct omap_hsmmc_host *host)
{
	struct mmc_ios *ios = &host->mmc->ios;
	u32 con;

	con = FUNC0(host->base, CON);
	if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN)
		FUNC1(host->base, CON, con | OD);
	else
		FUNC1(host->base, CON, con & ~OD);
}