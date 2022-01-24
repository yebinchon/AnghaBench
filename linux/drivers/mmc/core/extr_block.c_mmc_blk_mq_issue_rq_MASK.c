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
struct mmc_queue {int /*<<< orphan*/  use_cqe; struct mmc_blk_data* blkdata; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {int /*<<< orphan*/  part_type; TYPE_1__ queue; } ;
typedef  enum mmc_issued { ____Placeholder_mmc_issued } mmc_issued ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  MMC_ISSUE_ASYNC 137 
#define  MMC_ISSUE_DCMD 136 
#define  MMC_ISSUE_SYNC 135 
 int MMC_REQ_BUSY ; 
 int MMC_REQ_FAILED_TO_START ; 
 int MMC_REQ_FINISHED ; 
 int MMC_REQ_STARTED ; 
#define  REQ_OP_DISCARD 134 
#define  REQ_OP_DRV_IN 133 
#define  REQ_OP_DRV_OUT 132 
#define  REQ_OP_FLUSH 131 
#define  REQ_OP_READ 130 
#define  REQ_OP_SECURE_ERASE 129 
#define  REQ_OP_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mmc_queue*,struct request*) ; 
 int FUNC2 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_queue*,struct request*) ; 
 int FUNC7 (struct mmc_queue*,struct request*) ; 
 int FUNC8 (struct mmc_card*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mmc_queue*,struct mmc_host*) ; 
 int FUNC10 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC11 (struct request*) ; 

enum mmc_issued FUNC12(struct mmc_queue *mq, struct request *req)
{
	struct mmc_blk_data *md = mq->blkdata;
	struct mmc_card *card = md->queue.card;
	struct mmc_host *host = card->host;
	int ret;

	ret = FUNC8(card, md->part_type);
	if (ret)
		return MMC_REQ_FAILED_TO_START;

	switch (FUNC10(mq, req)) {
	case MMC_ISSUE_SYNC:
		ret = FUNC9(mq, host);
		if (ret)
			return MMC_REQ_BUSY;
		switch (FUNC11(req)) {
		case REQ_OP_DRV_IN:
		case REQ_OP_DRV_OUT:
			FUNC4(mq, req);
			break;
		case REQ_OP_DISCARD:
			FUNC3(mq, req);
			break;
		case REQ_OP_SECURE_ERASE:
			FUNC6(mq, req);
			break;
		case REQ_OP_FLUSH:
			FUNC5(mq, req);
			break;
		default:
			FUNC0(1);
			return MMC_REQ_FAILED_TO_START;
		}
		return MMC_REQ_FINISHED;
	case MMC_ISSUE_DCMD:
	case MMC_ISSUE_ASYNC:
		switch (FUNC11(req)) {
		case REQ_OP_FLUSH:
			ret = FUNC1(mq, req);
			break;
		case REQ_OP_READ:
		case REQ_OP_WRITE:
			if (mq->use_cqe)
				ret = FUNC2(mq, req);
			else
				ret = FUNC7(mq, req);
			break;
		default:
			FUNC0(1);
			ret = -EINVAL;
		}
		if (!ret)
			return MMC_REQ_STARTED;
		return ret == -EBUSY ? MMC_REQ_BUSY : MMC_REQ_FAILED_TO_START;
	default:
		FUNC0(1);
		return MMC_REQ_FAILED_TO_START;
	}
}