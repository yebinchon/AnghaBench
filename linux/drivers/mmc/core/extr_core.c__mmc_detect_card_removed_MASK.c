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
struct mmc_host {int /*<<< orphan*/  card; TYPE_2__* ops; TYPE_1__* bus_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_cd ) (struct mmc_host*) ;} ;
struct TYPE_3__ {int (* alive ) (struct mmc_host*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 

int FUNC8(struct mmc_host *host)
{
	int ret;

	if (!host->card || FUNC0(host->card))
		return 1;

	ret = host->bus_ops->alive(host);

	/*
	 * Card detect status and alive check may be out of sync if card is
	 * removed slowly, when card detect switch changes while card/slot
	 * pads are still contacted in hardware (refer to "SD Card Mechanical
	 * Addendum, Appendix C: Card Detection Switch"). So reschedule a
	 * detect work 200ms later for this case.
	 */
	if (!ret && host->ops->get_cd && !host->ops->get_cd(host)) {
		FUNC2(host, FUNC4(200));
		FUNC5("%s: card removed too slowly\n", FUNC3(host));
	}

	if (ret) {
		FUNC1(host->card);
		FUNC5("%s: card remove detected\n", FUNC3(host));
	}

	return ret;
}