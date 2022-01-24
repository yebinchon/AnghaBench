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
typedef  int u32 ;
struct e1000_hw {TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int E1000_EXTCNF_CTRL_SWFLAG ; 
 int /*<<< orphan*/  EXTCNF_CTRL ; 
 int /*<<< orphan*/  __E1000_ACCESS_SHARED_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 extcnf_ctrl;

	extcnf_ctrl = FUNC2(EXTCNF_CTRL);

	if (extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG) {
		extcnf_ctrl &= ~E1000_EXTCNF_CTRL_SWFLAG;
		FUNC3(EXTCNF_CTRL, extcnf_ctrl);
	} else {
		FUNC1("Semaphore unexpectedly released by sw/fw/hw\n");
	}

	FUNC0(__E1000_ACCESS_SHARED_RESOURCE, &hw->adapter->state);
}