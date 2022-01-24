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
struct ubiblock_pdu {int /*<<< orphan*/  work; int /*<<< orphan*/  usgl; } ;
struct ubiblock {int /*<<< orphan*/  wq; } ;
struct request {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct ubiblock* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
#define  REQ_OP_READ 128 
 struct ubiblock_pdu* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC4(struct blk_mq_hw_ctx *hctx,
			     const struct blk_mq_queue_data *bd)
{
	struct request *req = bd->rq;
	struct ubiblock *dev = hctx->queue->queuedata;
	struct ubiblock_pdu *pdu = FUNC0(req);

	switch (FUNC2(req)) {
	case REQ_OP_READ:
		FUNC3(&pdu->usgl);
		FUNC1(dev->wq, &pdu->work);
		return BLK_STS_OK;
	default:
		return BLK_STS_IOERR;
	}

}