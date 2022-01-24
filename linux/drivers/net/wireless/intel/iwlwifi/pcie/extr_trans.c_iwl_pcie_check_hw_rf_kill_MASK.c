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
struct iwl_trans_pcie {scalar_t__ opmode_down; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_RFKILL_HW ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC6(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie =  FUNC0(trans);
	bool hw_rfkill = FUNC2(trans);
	bool prev = FUNC5(STATUS_RFKILL_OPMODE, &trans->status);
	bool report;

	if (hw_rfkill) {
		FUNC4(STATUS_RFKILL_HW, &trans->status);
		FUNC4(STATUS_RFKILL_OPMODE, &trans->status);
	} else {
		FUNC1(STATUS_RFKILL_HW, &trans->status);
		if (trans_pcie->opmode_down)
			FUNC1(STATUS_RFKILL_OPMODE, &trans->status);
	}

	report = FUNC5(STATUS_RFKILL_OPMODE, &trans->status);

	if (prev != report)
		FUNC3(trans, report);

	return hw_rfkill;
}