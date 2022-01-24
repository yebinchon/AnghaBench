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
struct mmc_host {TYPE_1__* bus_ops; scalar_t__ bus_dead; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {int (* sw_reset ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mmc_host*) ; 

int FUNC5(struct mmc_host *host)
{
	int ret;

	if (!host->card)
		return -EINVAL;

	FUNC0(host);
	if (!host->bus_ops || host->bus_dead || !host->bus_ops->sw_reset) {
		FUNC1(host);
		return -EOPNOTSUPP;
	}

	ret = host->bus_ops->sw_reset(host);
	FUNC1(host);

	if (ret)
		FUNC3("%s: tried to SW reset card, got error %d\n",
			FUNC2(host), ret);

	return ret;
}