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
typedef  int u32 ;
struct request {TYPE_1__* rq_disk; } ;
struct TYPE_8__ {int bytes_xfered; int blocks; } ;
struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_6__ {scalar_t__ error; } ;
struct mmc_blk_request {TYPE_4__ data; TYPE_3__ cmd; TYPE_2__ sbc; } ;
struct mmc_queue_req {scalar_t__ retries; struct mmc_blk_request brq; } ;
struct mmc_queue {struct mmc_card* card; struct mmc_blk_data* blkdata; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;
struct mmc_blk_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int MMC_BLK_READ ; 
 int MMC_BLK_WRITE ; 
 scalar_t__ MMC_DATA_RETRIES ; 
 scalar_t__ MMC_MAX_RETRIES ; 
 scalar_t__ MMC_NO_RETRIES ; 
 scalar_t__ READ ; 
 scalar_t__ WRITE ; 
 int FUNC0 (struct mmc_card*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mmc_blk_request*) ; 
 int FUNC2 (struct mmc_card*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_queue*,struct request*) ; 
 scalar_t__ FUNC5 (struct mmc_blk_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct request*,int) ; 
 scalar_t__ FUNC7 (struct mmc_card*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct mmc_card*,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 struct mmc_queue_req* FUNC14 (struct request*) ; 
 scalar_t__ FUNC15 (struct request*) ; 

__attribute__((used)) static void FUNC16(struct mmc_queue *mq, struct request *req)
{
	int type = FUNC15(req) == READ ? MMC_BLK_READ : MMC_BLK_WRITE;
	struct mmc_queue_req *mqrq = FUNC14(req);
	struct mmc_blk_request *brq = &mqrq->brq;
	struct mmc_blk_data *md = mq->blkdata;
	struct mmc_card *card = mq->card;
	u32 status;
	u32 blocks;
	int err;

	/*
	 * Some errors the host driver might not have seen. Set the number of
	 * bytes transferred to zero in that case.
	 */
	err = FUNC0(card, &status, 0);
	if (err || FUNC6(req, status))
		brq->data.bytes_xfered = 0;

	FUNC11(card->host);

	/*
	 * Try again to get the status. This also provides an opportunity for
	 * re-tuning.
	 */
	if (err)
		err = FUNC0(card, &status, 0);

	/*
	 * Nothing more to do after the number of bytes transferred has been
	 * updated and there is no card.
	 */
	if (err && FUNC8(card->host))
		return;

	/* Try to get back to "tran" state */
	if (!FUNC9(mq->card->host) &&
	    (err || !FUNC3(status)))
		err = FUNC2(mq->card, req);

	/*
	 * Special case for SD cards where the card might record the number of
	 * blocks written.
	 */
	if (!err && FUNC1(brq) && FUNC7(card) &&
	    FUNC15(req) == WRITE) {
		if (FUNC12(card, &blocks))
			brq->data.bytes_xfered = 0;
		else
			brq->data.bytes_xfered = blocks << 9;
	}

	/* Reset if the card is in a bad state */
	if (!FUNC9(mq->card->host) &&
	    err && FUNC5(md, card->host, type)) {
		FUNC13("%s: recovery failed!\n", req->rq_disk->disk_name);
		mqrq->retries = MMC_NO_RETRIES;
		return;
	}

	/*
	 * If anything was done, just return and if there is anything remaining
	 * on the request it will get requeued.
	 */
	if (brq->data.bytes_xfered)
		return;

	/* Reset before last retry */
	if (mqrq->retries + 1 == MMC_MAX_RETRIES)
		FUNC5(md, card->host, type);

	/* Command errors fail fast, so use all MMC_MAX_RETRIES */
	if (brq->sbc.error || brq->cmd.error)
		return;

	/* Reduce the remaining retries for data errors */
	if (mqrq->retries < MMC_MAX_RETRIES - MMC_DATA_RETRIES) {
		mqrq->retries = MMC_MAX_RETRIES - MMC_DATA_RETRIES;
		return;
	}

	/* FIXME: Missing single sector read for large sector size */
	if (!FUNC10(card) && FUNC15(req) == READ &&
	    brq->data.blocks > 1) {
		/* Read one sector at a time */
		FUNC4(mq, req);
		return;
	}
}