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
struct regulator {int dummy; } ;
struct pxamci_host {struct mmc_host* mmc; TYPE_1__* pdata; scalar_t__ power; } ;
struct TYPE_4__ {struct regulator* vmmc; } ;
struct mmc_host {TYPE_2__ supply; } ;
struct TYPE_3__ {int ocr_mask; int (* setpower ) (int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*,struct regulator*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline int FUNC5(struct pxamci_host *host,
				    unsigned char power_mode,
				    unsigned int vdd)
{
	struct mmc_host *mmc = host->mmc;
	struct regulator *supply = mmc->supply.vmmc;

	if (!FUNC0(supply))
		return FUNC3(mmc, supply, vdd);

	if (host->power) {
		bool on = !!((1 << vdd) & host->pdata->ocr_mask);
		FUNC1(host->power, on);
	}

	if (host->pdata && host->pdata->setpower)
		return host->pdata->setpower(FUNC2(host->mmc), vdd);

	return 0;
}