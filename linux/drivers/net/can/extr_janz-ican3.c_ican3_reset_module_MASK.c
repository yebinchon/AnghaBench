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
typedef  int u8 ;
struct ican3_dev {int num; int /*<<< orphan*/  ndev; scalar_t__ dpm; TYPE_2__* dpmctrl; int /*<<< orphan*/  free_page; TYPE_1__* ctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  hwreset; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_disable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_FREE_START ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  QUEUE_OLD_CONTROL ; 
 scalar_t__ TARGET_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ican3_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ican3_dev *mod)
{
	unsigned long start;
	u8 runold, runnew;

	/* disable interrupts so no more work is scheduled */
	FUNC2(1 << mod->num, &mod->ctrl->int_disable);

	/* the first unallocated page in the DPM is #9 */
	mod->free_page = DPM_FREE_START;

	FUNC0(mod, QUEUE_OLD_CONTROL);
	runold = FUNC1(mod->dpm + TARGET_RUNNING);

	/* reset the module */
	FUNC2(0x00, &mod->dpmctrl->hwreset);

	/* wait until the module has finished resetting and is running */
	start = jiffies;
	do {
		FUNC0(mod, QUEUE_OLD_CONTROL);
		runnew = FUNC1(mod->dpm + TARGET_RUNNING);
		if (runnew == (runold ^ 0xff))
			return 0;

		FUNC3(10);
	} while (FUNC5(jiffies, start + HZ / 2));

	FUNC4(mod->ndev, "failed to reset CAN module\n");
	return -ETIMEDOUT;
}