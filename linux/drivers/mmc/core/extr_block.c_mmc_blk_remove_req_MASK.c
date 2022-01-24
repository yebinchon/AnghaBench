#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ boot_ro_lockable; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;
struct TYPE_6__ {struct mmc_card* card; } ;
struct mmc_blk_data {int area_type; TYPE_2__ queue; TYPE_3__* disk; int /*<<< orphan*/  power_ro_lock; int /*<<< orphan*/  force_ro; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int GENHD_FL_UP ; 
 int MMC_BLK_DATA_AREA_BOOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct mmc_blk_data *md)
{
	struct mmc_card *card;

	if (md) {
		/*
		 * Flush remaining requests and free queues. It
		 * is freeing the queue that stops new requests
		 * from being accepted.
		 */
		card = md->queue.card;
		if (md->disk->flags & GENHD_FL_UP) {
			FUNC1(FUNC2(md->disk), &md->force_ro);
			if ((md->area_type & MMC_BLK_DATA_AREA_BOOT) &&
					card->ext_csd.boot_ro_lockable)
				FUNC1(FUNC2(md->disk),
					&md->power_ro_lock);

			FUNC0(md->disk);
		}
		FUNC4(&md->queue);
		FUNC3(md);
	}
}