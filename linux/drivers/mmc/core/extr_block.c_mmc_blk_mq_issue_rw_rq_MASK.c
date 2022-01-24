#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  done; } ;
struct TYPE_6__ {TYPE_2__ mrq; } ;
struct mmc_queue_req {TYPE_1__ brq; } ;
struct mmc_queue {int rw_wait; TYPE_5__* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_8__ {struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  mmc_blk_mq_req_done ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_queue_req*,TYPE_5__*,int /*<<< orphan*/ ,struct mmc_queue*) ; 
 int FUNC2 (struct mmc_queue*,struct request**) ; 
 scalar_t__ FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct mmc_host*,TYPE_2__*) ; 
 struct mmc_queue_req* FUNC8 (struct request*) ; 

__attribute__((used)) static int FUNC9(struct mmc_queue *mq,
				  struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC8(req);
	struct mmc_host *host = mq->card->host;
	struct request *prev_req = NULL;
	int err = 0;

	FUNC1(mqrq, mq->card, 0, mq);

	mqrq->brq.mrq.done = mmc_blk_mq_req_done;

	FUNC5(host, &mqrq->brq.mrq);

	err = FUNC2(mq, &prev_req);
	if (err)
		goto out_post_req;

	mq->rw_wait = true;

	err = FUNC7(host, &mqrq->brq.mrq);

	if (prev_req)
		FUNC0(mq, prev_req);

	if (err)
		mq->rw_wait = false;

	/* Release re-tuning here where there is no synchronization required */
	if (err || FUNC3(host))
		FUNC6(host);

out_post_req:
	if (err)
		FUNC4(host, &mqrq->brq.mrq, err);

	return err;
}