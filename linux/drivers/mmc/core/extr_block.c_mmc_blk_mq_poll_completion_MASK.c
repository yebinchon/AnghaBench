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
struct mmc_queue {TYPE_1__* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_host* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_queue*,struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_queue*,struct mmc_queue_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 struct mmc_queue_req* FUNC6 (struct request*) ; 

__attribute__((used)) static void FUNC7(struct mmc_queue *mq,
				       struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC6(req);
	struct mmc_host *host = mq->card->host;

	if (FUNC2(&mqrq->brq) ||
	    FUNC0(mq->card, req)) {
		FUNC1(mq, req);
	} else {
		FUNC3(mq, req);
		FUNC5(host);
	}

	FUNC4(mq, mqrq);
}