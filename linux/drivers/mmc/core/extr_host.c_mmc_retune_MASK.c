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
struct TYPE_2__ {scalar_t__ timing; } ;
struct mmc_host {int doing_retune; int /*<<< orphan*/  card; TYPE_1__ ios; scalar_t__ need_retune; scalar_t__ retune_now; } ;

/* Variables and functions */
 scalar_t__ MMC_TIMING_MMC_HS400 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct mmc_host *host)
{
	bool return_to_hs400 = false;
	int err;

	if (host->retune_now)
		host->retune_now = 0;
	else
		return 0;

	if (!host->need_retune || host->doing_retune || !host->card)
		return 0;

	host->need_retune = 0;

	host->doing_retune = 1;

	if (host->ios.timing == MMC_TIMING_MMC_HS400) {
		err = FUNC2(host->card);
		if (err)
			goto out;

		return_to_hs400 = true;
	}

	err = FUNC0(host->card);
	if (err)
		goto out;

	if (return_to_hs400)
		err = FUNC1(host->card);
out:
	host->doing_retune = 0;

	return err;
}