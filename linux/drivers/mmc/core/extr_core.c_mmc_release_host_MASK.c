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
struct mmc_host {int caps; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; TYPE_1__* claimer; scalar_t__ claimed; scalar_t__ claim_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/ * task; } ;

/* Variables and functions */
 int MMC_CAP_SYNC_RUNTIME_PM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct mmc_host *host)
{
	unsigned long flags;

	FUNC0(!host->claimed);

	FUNC5(&host->lock, flags);
	if (--host->claim_cnt) {
		/* Release for nested claim */
		FUNC6(&host->lock, flags);
	} else {
		host->claimed = 0;
		host->claimer->task = NULL;
		host->claimer = NULL;
		FUNC6(&host->lock, flags);
		FUNC7(&host->wq);
		FUNC2(FUNC1(host));
		if (host->caps & MMC_CAP_SYNC_RUNTIME_PM)
			FUNC4(FUNC1(host));
		else
			FUNC3(FUNC1(host));
	}
}