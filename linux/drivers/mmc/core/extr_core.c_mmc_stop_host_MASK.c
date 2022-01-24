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
struct TYPE_4__ {scalar_t__ cd_irq; } ;
struct mmc_host {int rescan_disable; TYPE_1__* bus_ops; int /*<<< orphan*/  bus_dead; scalar_t__ pm_flags; int /*<<< orphan*/  detect; TYPE_2__ slot; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* remove ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_host*) ; 

void FUNC10(struct mmc_host *host)
{
	if (host->slot.cd_irq >= 0) {
		FUNC6(host, false);
		FUNC1(host->slot.cd_irq);
	}

	host->rescan_disable = 1;
	FUNC0(&host->detect);

	/* clear pm flags now and let card drivers set them as needed */
	host->pm_flags = 0;

	FUNC2(host);
	if (host->bus_ops && !host->bus_dead) {
		/* Calling bus_ops->remove() with a claimed host can deadlock */
		host->bus_ops->remove(host);
		FUNC4(host);
		FUNC5(host);
		FUNC7(host);
		FUNC8(host);
		FUNC3(host);
		return;
	}
	FUNC3(host);

	FUNC4(host);
	FUNC7(host);
	FUNC8(host);
}