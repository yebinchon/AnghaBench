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
struct mmc_card {int quirks; int /*<<< orphan*/  host; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {TYPE_1__ queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_NOTSUPP ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int EIO ; 
 int /*<<< orphan*/  EXT_CSD_CMD_SET_NORMAL ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_EXT_CSD ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_SECERASE ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_SECTRIM1 ; 
 int /*<<< orphan*/  INAND_CMD38_ARG_SECTRIM2 ; 
 int MMC_BLK_SECDISCARD ; 
 int MMC_QUIRK_INAND_CMD38 ; 
 unsigned int MMC_SECURE_ERASE_ARG ; 
 unsigned int MMC_SECURE_TRIM1_ARG ; 
 unsigned int MMC_SECURE_TRIM2_ARG ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct request*) ; 
 unsigned int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_blk_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_blk_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_card*) ; 
 scalar_t__ FUNC6 (struct mmc_card*) ; 
 int FUNC7 (struct mmc_card*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_card*,unsigned int,unsigned int) ; 
 int FUNC9 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mmc_queue *mq,
				       struct request *req)
{
	struct mmc_blk_data *md = mq->blkdata;
	struct mmc_card *card = md->queue.card;
	unsigned int from, nr, arg;
	int err = 0, type = MMC_BLK_SECDISCARD;
	blk_status_t status = BLK_STS_OK;

	if (!(FUNC5(card))) {
		status = BLK_STS_NOTSUPP;
		goto out;
	}

	from = FUNC1(req);
	nr = FUNC2(req);

	if (FUNC6(card) && !FUNC8(card, from, nr))
		arg = MMC_SECURE_TRIM1_ARG;
	else
		arg = MMC_SECURE_ERASE_ARG;

retry:
	if (card->quirks & MMC_QUIRK_INAND_CMD38) {
		err = FUNC9(card, EXT_CSD_CMD_SET_NORMAL,
				 INAND_CMD38_ARG_EXT_CSD,
				 arg == MMC_SECURE_TRIM1_ARG ?
				 INAND_CMD38_ARG_SECTRIM1 :
				 INAND_CMD38_ARG_SECERASE,
				 0);
		if (err)
			goto out_retry;
	}

	err = FUNC7(card, from, nr, arg);
	if (err == -EIO)
		goto out_retry;
	if (err) {
		status = BLK_STS_IOERR;
		goto out;
	}

	if (arg == MMC_SECURE_TRIM1_ARG) {
		if (card->quirks & MMC_QUIRK_INAND_CMD38) {
			err = FUNC9(card, EXT_CSD_CMD_SET_NORMAL,
					 INAND_CMD38_ARG_EXT_CSD,
					 INAND_CMD38_ARG_SECTRIM2,
					 0);
			if (err)
				goto out_retry;
		}

		err = FUNC7(card, from, nr, MMC_SECURE_TRIM2_ARG);
		if (err == -EIO)
			goto out_retry;
		if (err) {
			status = BLK_STS_IOERR;
			goto out;
		}
	}

out_retry:
	if (err && !FUNC3(md, card->host, type))
		goto retry;
	if (!err)
		FUNC4(md, type);
out:
	FUNC0(req, status);
}