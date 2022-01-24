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
struct iwl_op_mode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fwrt; TYPE_2__ tcm; TYPE_1__* nvm_sections; int /*<<< orphan*/ * nvm_data; int /*<<< orphan*/ * phy_db; int /*<<< orphan*/  trans; int /*<<< orphan*/ * error_recovery_buf; int /*<<< orphan*/ * mcast_filter_cmd; int /*<<< orphan*/ * scan_cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int NVM_MAX_NUM_SECTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iwl_op_mode *op_mode)
{
	struct iwl_mvm *mvm = FUNC0(op_mode);
	int i;

	FUNC5(mvm);

	FUNC6(mvm);

	FUNC3(mvm->hw);

	FUNC9(mvm->scan_cmd);
	FUNC9(mvm->mcast_filter_cmd);
	mvm->mcast_filter_cmd = NULL;

	FUNC9(mvm->error_recovery_buf);
	mvm->error_recovery_buf = NULL;

	FUNC8(mvm->trans);

	FUNC7(mvm->phy_db);
	mvm->phy_db = NULL;

	FUNC9(mvm->nvm_data);
	for (i = 0; i < NVM_MAX_NUM_SECTIONS; i++)
		FUNC9(mvm->nvm_sections[i].data);

	FUNC1(&mvm->tcm.work);

	FUNC4(&mvm->fwrt);
	FUNC10(&mvm->mutex);

	FUNC2(mvm->hw);
}