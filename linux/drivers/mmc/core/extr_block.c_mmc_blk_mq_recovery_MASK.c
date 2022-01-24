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
struct request {int dummy; } ;
struct mmc_queue_req {int /*<<< orphan*/  brq; } ;
struct mmc_queue {int rw_wait; struct request* recovery_req; TYPE_1__* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_queue*,struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_queue*,struct mmc_queue_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_queue_req* FUNC5 (struct request*) ; 

void FUNC6(struct mmc_queue *mq)
{
	struct request *req = mq->recovery_req;
	struct mmc_host *host = mq->card->host;
	struct mmc_queue_req *mqrq = FUNC5(req);

	mq->recovery_req = NULL;
	mq->rw_wait = false;

	if (FUNC2(&mqrq->brq)) {
		FUNC4(host);
		FUNC1(mq, req);
	}

	FUNC3(mq, mqrq);

	FUNC0(mq, req);
}