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
struct request {int dummy; } ;
struct mmc_request {int dummy; } ;
struct TYPE_3__ {struct mmc_request mrq; } ;
struct mmc_queue_req {TYPE_1__ brq; } ;
struct mmc_queue {scalar_t__ in_recovery; TYPE_2__* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_request*,int /*<<< orphan*/ ) ; 
 struct mmc_queue_req* FUNC4 (struct request*) ; 

__attribute__((used)) static void FUNC5(struct mmc_queue *mq, struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC4(req);
	struct mmc_request *mrq = &mqrq->brq.mrq;
	struct mmc_host *host = mq->card->host;

	FUNC3(host, mrq, 0);

	/*
	 * Block layer timeouts race with completions which means the normal
	 * completion path cannot be used during recovery.
	 */
	if (mq->in_recovery)
		FUNC1(mq, req);
	else
		FUNC0(req);

	FUNC2(mq, req);
}