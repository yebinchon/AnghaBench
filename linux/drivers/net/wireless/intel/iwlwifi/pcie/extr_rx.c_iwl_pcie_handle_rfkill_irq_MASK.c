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
struct isr_statistics {int /*<<< orphan*/  rfkill; } ;
struct iwl_trans_pcie {scalar_t__ opmode_down; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  mutex; struct isr_statistics isr_stats; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,char*) ; 
 int /*<<< orphan*/  STATUS_RFKILL_HW ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 int /*<<< orphan*/  STATUS_SYNC_HCMD_ACTIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
	bool hw_rfkill, prev, report;

	FUNC6(&trans_pcie->mutex);
	prev = FUNC10(STATUS_RFKILL_OPMODE, &trans->status);
	hw_rfkill = FUNC4(trans);
	if (hw_rfkill) {
		FUNC8(STATUS_RFKILL_OPMODE, &trans->status);
		FUNC8(STATUS_RFKILL_HW, &trans->status);
	}
	if (trans_pcie->opmode_down)
		report = hw_rfkill;
	else
		report = FUNC10(STATUS_RFKILL_OPMODE, &trans->status);

	FUNC2(trans, "RF_KILL bit toggled to %s.\n",
		 hw_rfkill ? "disable radio" : "enable radio");

	isr_stats->rfkill++;

	if (prev != report)
		FUNC5(trans, report);
	FUNC7(&trans_pcie->mutex);

	if (hw_rfkill) {
		if (FUNC9(STATUS_SYNC_HCMD_ACTIVE,
				       &trans->status))
			FUNC0(trans,
					  "Rfkill while SYNC HCMD in flight\n");
		FUNC11(&trans_pcie->wait_command_queue);
	} else {
		FUNC3(STATUS_RFKILL_HW, &trans->status);
		if (trans_pcie->opmode_down)
			FUNC3(STATUS_RFKILL_OPMODE, &trans->status);
	}
}