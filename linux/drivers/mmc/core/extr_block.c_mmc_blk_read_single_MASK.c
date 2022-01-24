#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct request {int dummy; } ;
struct mmc_request {TYPE_3__* data; TYPE_2__* cmd; } ;
struct TYPE_4__ {struct mmc_request mrq; } ;
struct mmc_queue_req {int retries; TYPE_1__ brq; } ;
struct mmc_queue {struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_6__ {scalar_t__ bytes_xfered; scalar_t__ error; } ;
struct TYPE_5__ {int* resp; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int CMD_ERRORS ; 
 int MMC_MAX_RETRIES ; 
 int /*<<< orphan*/  MMC_READ_SINGLE_RETRIES ; 
 scalar_t__ FUNC0 (struct request*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mmc_card*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_queue_req*,struct mmc_card*,int,struct mmc_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct mmc_card*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 struct mmc_queue_req* FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct mmc_queue *mq, struct request *req)
{
	struct mmc_queue_req *mqrq = FUNC7(req);
	struct mmc_request *mrq = &mqrq->brq.mrq;
	struct mmc_card *card = mq->card;
	struct mmc_host *host = card->host;
	blk_status_t error = BLK_STS_OK;
	int retries = 0;

	do {
		u32 status;
		int err;

		FUNC3(mqrq, card, 1, mq);

		FUNC6(host, mrq);

		err = FUNC5(card, &status);
		if (err)
			goto error_exit;

		if (!FUNC4(host) &&
		    !FUNC2(status)) {
			err = FUNC1(card, req);
			if (err)
				goto error_exit;
		}

		if (mrq->cmd->error && retries++ < MMC_READ_SINGLE_RETRIES)
			continue;

		retries = 0;

		if (mrq->cmd->error ||
		    mrq->data->error ||
		    (!FUNC4(host) &&
		     (mrq->cmd->resp[0] & CMD_ERRORS || status & CMD_ERRORS)))
			error = BLK_STS_IOERR;
		else
			error = BLK_STS_OK;

	} while (FUNC0(req, error, 512));

	return;

error_exit:
	mrq->data->bytes_xfered = 0;
	FUNC0(req, BLK_STS_IOERR, 512);
	/* Let it try the remaining request again */
	if (mqrq->retries > MMC_MAX_RETRIES - 1)
		mqrq->retries = MMC_MAX_RETRIES - 1;
}