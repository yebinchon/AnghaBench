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
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct mmc_blk_data {scalar_t__ usage; int /*<<< orphan*/  disk; TYPE_1__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  mmc_blk_ida ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mmc_blk_data *md)
{
	FUNC4(&open_lock);
	md->usage--;
	if (md->usage == 0) {
		int devidx = FUNC3(md->disk);
		FUNC0(md->queue.queue);
		FUNC1(&mmc_blk_ida, devidx);
		FUNC6(md->disk);
		FUNC2(md);
	}
	FUNC5(&open_lock);
}