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
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_RFKILL_HW ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct iwl_trans *trans,
				       bool was_in_rfkill)
{
	bool hw_rfkill;

	/*
	 * Check again since the RF kill state may have changed while
	 * all the interrupts were disabled, in this case we couldn't
	 * receive the RF kill interrupt and update the state in the
	 * op_mode.
	 * Don't call the op_mode if the rkfill state hasn't changed.
	 * This allows the op_mode to call stop_device from the rfkill
	 * notification without endless recursion. Under very rare
	 * circumstances, we might have a small recursion if the rfkill
	 * state changed exactly now while we were called from stop_device.
	 * This is very unlikely but can happen and is supported.
	 */
	hw_rfkill = FUNC1(trans);
	if (hw_rfkill) {
		FUNC3(STATUS_RFKILL_HW, &trans->status);
		FUNC3(STATUS_RFKILL_OPMODE, &trans->status);
	} else {
		FUNC0(STATUS_RFKILL_HW, &trans->status);
		FUNC0(STATUS_RFKILL_OPMODE, &trans->status);
	}
	if (hw_rfkill != was_in_rfkill)
		FUNC2(trans, hw_rfkill);
}