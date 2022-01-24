#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {struct request_queue* q; } ;
struct mmc_request {TYPE_3__* data; TYPE_2__* cmd; } ;
struct TYPE_5__ {struct mmc_request mrq; } ;
struct mmc_queue_req {int /*<<< orphan*/  retries; TYPE_1__ brq; } ;
struct mmc_queue {int* in_flight; int /*<<< orphan*/  ctx; TYPE_4__* card; int /*<<< orphan*/  cqe_busy; int /*<<< orphan*/  lock; } ;
struct mmc_host {int dummy; } ;
struct TYPE_8__ {struct mmc_host* host; } ;
struct TYPE_7__ {int error; int /*<<< orphan*/  bytes_xfered; } ;
struct TYPE_6__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ MMC_CQE_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int) ; 
 scalar_t__ FUNC4 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 size_t FUNC7 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct mmc_queue*) ; 
 struct mmc_queue_req* FUNC10 (struct request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct mmc_queue *mq, struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC10(req);
	struct mmc_request *mrq = &mqrq->brq.mrq;
	struct request_queue *q = req->q;
	struct mmc_host *host = mq->card->host;
	unsigned long flags;
	bool put_card;
	int err;

	FUNC6(host, mrq);

	if (mrq->cmd && mrq->cmd->error)
		err = mrq->cmd->error;
	else if (mrq->data && mrq->data->error)
		err = mrq->data->error;
	else
		err = 0;

	if (err) {
		if (mqrq->retries++ < MMC_CQE_RETRIES)
			FUNC2(req, true);
		else
			FUNC1(req, BLK_STS_IOERR);
	} else if (mrq->data) {
		if (FUNC4(req, BLK_STS_OK, mrq->data->bytes_xfered))
			FUNC2(req, true);
		else
			FUNC0(req, BLK_STS_OK);
	} else {
		FUNC1(req, BLK_STS_OK);
	}

	FUNC11(&mq->lock, flags);

	mq->in_flight[FUNC7(mq, req)] -= 1;

	put_card = (FUNC9(mq) == 0);

	FUNC5(mq);

	FUNC12(&mq->lock, flags);

	if (!mq->cqe_busy)
		FUNC3(q, true);

	if (put_card)
		FUNC8(mq->card, &mq->ctx);
}