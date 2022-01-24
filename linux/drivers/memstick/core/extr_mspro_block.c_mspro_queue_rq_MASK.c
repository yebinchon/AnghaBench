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
struct mspro_block_data {int /*<<< orphan*/  q_lock; int /*<<< orphan*/ * block_req; scalar_t__ eject; } ;
struct memstick_dev {int dummy; } ;
struct blk_mq_queue_data {int /*<<< orphan*/ * rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct memstick_dev* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mspro_block_data* FUNC1 (struct memstick_dev*) ; 
 scalar_t__ FUNC2 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC5(struct blk_mq_hw_ctx *hctx,
				   const struct blk_mq_queue_data *bd)
{
	struct memstick_dev *card = hctx->queue->queuedata;
	struct mspro_block_data *msb = FUNC1(card);

	FUNC3(&msb->q_lock);

	if (msb->block_req) {
		FUNC4(&msb->q_lock);
		return BLK_STS_DEV_RESOURCE;
	}

	if (msb->eject) {
		FUNC4(&msb->q_lock);
		FUNC0(bd->rq);
		return BLK_STS_IOERR;
	}

	msb->block_req = bd->rq;
	FUNC0(bd->rq);

	if (FUNC2(card))
		msb->block_req = NULL;

	FUNC4(&msb->q_lock);
	return BLK_STS_OK;
}