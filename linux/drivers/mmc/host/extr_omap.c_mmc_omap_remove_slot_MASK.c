#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mmc_omap_slot {TYPE_1__* host; int /*<<< orphan*/  cover_timer; int /*<<< orphan*/  cover_tasklet; TYPE_2__* pdata; struct mmc_host* mmc; } ;
struct mmc_host {int /*<<< orphan*/  class_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * get_cover_state; int /*<<< orphan*/ * name; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmc_omap_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_cover_switch ; 
 int /*<<< orphan*/  dev_attr_slot_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mmc_omap_slot *slot)
{
	struct mmc_host *mmc = slot->mmc;

	if (slot->pdata->name != NULL)
		FUNC1(&mmc->class_dev, &dev_attr_slot_name);
	if (slot->pdata->get_cover_state != NULL)
		FUNC1(&mmc->class_dev, &dev_attr_cover_switch);

	FUNC5(&slot->cover_tasklet);
	FUNC0(&slot->cover_timer);
	FUNC2(slot->host->mmc_omap_wq);

	FUNC4(mmc);
	FUNC3(mmc);
}