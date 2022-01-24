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
struct mmc_queue {struct mmc_blk_data* blkdata; } ;
struct mmc_card {int dummy; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {TYPE_1__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mmc_card*) ; 

__attribute__((used)) static void FUNC2(struct mmc_queue *mq, struct request *req)
{
	struct mmc_blk_data *md = mq->blkdata;
	struct mmc_card *card = md->queue.card;
	int ret = 0;

	ret = FUNC1(card);
	FUNC0(req, ret ? BLK_STS_IOERR : BLK_STS_OK);
}