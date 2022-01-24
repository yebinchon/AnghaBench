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
struct tmio_mmc_host {int /*<<< orphan*/  lock; struct mmc_request* mrq; int /*<<< orphan*/  last_req_ts; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC0 (struct mmc_request*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct tmio_mmc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct tmio_mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct tmio_mmc_host *host = FUNC1(mmc);
	unsigned long flags;

	FUNC4(&host->lock, flags);

	if (host->mrq) {
		FUNC3("request not null\n");
		if (FUNC0(host->mrq)) {
			FUNC5(&host->lock, flags);
			mrq->cmd->error = -EAGAIN;
			FUNC2(mmc, mrq);
			return;
		}
	}

	host->last_req_ts = jiffies;
	FUNC7();
	host->mrq = mrq;

	FUNC5(&host->lock, flags);

	FUNC6(host, mrq);
}