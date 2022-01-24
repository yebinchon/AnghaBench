#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msdc_host {int /*<<< orphan*/  mmc; scalar_t__ error; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  req_timeout; } ;
struct mmc_request {scalar_t__ data; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct msdc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdc_host*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msdc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct msdc_host *host, struct mmc_request *mrq)
{
	unsigned long flags;
	bool ret;

	ret = FUNC0(&host->req_timeout);
	if (!ret) {
		/* delay work already running */
		return;
	}
	FUNC5(&host->lock, flags);
	host->mrq = NULL;
	FUNC6(&host->lock, flags);

	FUNC3(host, mrq->cmd, mrq->data);
	if (mrq->data)
		FUNC4(host, mrq);
	if (host->error)
		FUNC2(host);
	FUNC1(host->mmc, mrq);
}