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
struct iwl_trans_pcie {int opmode_down; int /*<<< orphan*/  mutex; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	bool was_in_rfkill;

	FUNC3(&trans_pcie->mutex);
	trans_pcie->opmode_down = true;
	was_in_rfkill = FUNC5(STATUS_RFKILL_OPMODE, &trans->status);
	FUNC1(trans);
	FUNC2(trans, was_in_rfkill);
	FUNC4(&trans_pcie->mutex);
}