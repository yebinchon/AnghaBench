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
struct msb_data {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  io_work; int /*<<< orphan*/  io_queue; int /*<<< orphan*/  io_queue_stopped; struct request* req; scalar_t__ card_dead; } ;
struct memstick_dev {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {struct memstick_dev* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct msb_data* FUNC4 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC8(struct blk_mq_hw_ctx *hctx,
				 const struct blk_mq_queue_data *bd)
{
	struct memstick_dev *card = hctx->queue->queuedata;
	struct msb_data *msb = FUNC4(card);
	struct request *req = bd->rq;

	FUNC3("Submit request");

	FUNC6(&msb->q_lock);

	if (msb->card_dead) {
		FUNC2("Refusing requests on removed card");

		FUNC0(!msb->io_queue_stopped);

		FUNC7(&msb->q_lock);
		FUNC1(req);
		return BLK_STS_IOERR;
	}

	if (msb->req) {
		FUNC7(&msb->q_lock);
		return BLK_STS_DEV_RESOURCE;
	}

	FUNC1(req);
	msb->req = req;

	if (!msb->io_queue_stopped)
		FUNC5(msb->io_queue, &msb->io_work);

	FUNC7(&msb->q_lock);
	return BLK_STS_OK;
}