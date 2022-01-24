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
struct mmc_card {int quirks; scalar_t__ erase_arg; int /*<<< orphan*/  host; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {TYPE_1__ queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_NOTSUPP ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int EIO ; 
 int /*<<< orphan*/  EXT_CSD_CMD_SET_NORMAL ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_ERASE ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_EXT_CSD ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_TRIM ; 
 int MMC_BLK_DISCARD ; 
 int MMC_QUIRK_INAND_CMD38 ; 
 scalar_t__ MMC_TRIM_ARG ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct request*) ; 
 unsigned int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_blk_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_blk_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_card*) ; 
 int FUNC6 (struct mmc_card*,unsigned int,unsigned int,scalar_t__) ; 
 int FUNC7 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct mmc_queue *mq, struct request *req)
{
	struct mmc_blk_data *md = mq->blkdata;
	struct mmc_card *card = md->queue.card;
	unsigned int from, nr;
	int err = 0, type = MMC_BLK_DISCARD;
	blk_status_t status = BLK_STS_OK;

	if (!FUNC5(card)) {
		status = BLK_STS_NOTSUPP;
		goto fail;
	}

	from = FUNC1(req);
	nr = FUNC2(req);

	do {
		err = 0;
		if (card->quirks & MMC_QUIRK_INAND_CMD38) {
			err = FUNC7(card, EXT_CSD_CMD_SET_NORMAL,
					 INAND_CMD38_ARG_EXT_CSD,
					 card->erase_arg == MMC_TRIM_ARG ?
					 INAND_CMD38_ARG_TRIM :
					 INAND_CMD38_ARG_ERASE,
					 0);
		}
		if (!err)
			err = FUNC6(card, from, nr, card->erase_arg);
	} while (err == -EIO && !FUNC3(md, card->host, type));
	if (err)
		status = BLK_STS_IOERR;
	else
		FUNC4(md, type);
fail:
	FUNC0(req, status);
}