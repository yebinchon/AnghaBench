#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mmc_queue {int /*<<< orphan*/  blkdata; struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_BLK_CQE_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct mmc_queue *mq)
{
	struct mmc_card *card = mq->card;
	struct mmc_host *host = card->host;
	int err;

	FUNC4("%s: CQE recovery start\n", FUNC3(host));

	err = FUNC2(host);
	if (err)
		FUNC0(mq->blkdata, host, MMC_BLK_CQE_RECOVERY);
	else
		FUNC1(mq->blkdata, MMC_BLK_CQE_RECOVERY);

	FUNC4("%s: CQE recovery done\n", FUNC3(host));
}