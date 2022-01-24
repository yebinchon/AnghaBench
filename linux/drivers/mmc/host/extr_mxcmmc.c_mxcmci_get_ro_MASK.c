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
struct mxcmci_host {TYPE_1__* pdata; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_ro ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct mmc_host*) ; 
 struct mxcmci_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct mxcmci_host *host = FUNC2(mmc);

	if (host->pdata && host->pdata->get_ro)
		return !!host->pdata->get_ro(FUNC0(mmc));
	/*
	 * If board doesn't support read only detection (no mmc_gpio
	 * context or gpio is invalid), then let the mmc core decide
	 * what to do.
	 */
	return FUNC1(mmc);
}