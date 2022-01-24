#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cur_fw_img; } ;
struct iwl_mvm {int rfkill_safe_init_done; TYPE_2__ fwrt; int /*<<< orphan*/  trans; } ;
struct TYPE_5__ {scalar_t__ init_dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_FW_INI_TIME_POINT_AFTER_ALIVE ; 
 int /*<<< orphan*/  IWL_FW_INI_TIME_POINT_EARLY ; 
 int /*<<< orphan*/  IWL_UCODE_REGULAR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_mvm*,int) ; 
 int FUNC7 (struct iwl_mvm*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ iwlmvm_mod_params ; 

__attribute__((used)) static int FUNC10(struct iwl_mvm *mvm)
{
	int ret;

	if (FUNC4(mvm))
		return FUNC7(mvm, false);

	ret = FUNC6(mvm, false);

	if (ret) {
		FUNC0(mvm, "Failed to run INIT ucode: %d\n", ret);

		if (iwlmvm_mod_params.init_dbg)
			return 0;
		return ret;
	}

	FUNC2(&mvm->fwrt);
	FUNC9(mvm->trans);
	ret = FUNC8(mvm->trans);
	if (ret)
		return ret;

	FUNC1(&mvm->fwrt, IWL_FW_INI_TIME_POINT_EARLY, NULL);

	mvm->rfkill_safe_init_done = false;
	ret = FUNC5(mvm, IWL_UCODE_REGULAR);
	if (ret)
		return ret;

	mvm->rfkill_safe_init_done = true;

	FUNC1(&mvm->fwrt, IWL_FW_INI_TIME_POINT_AFTER_ALIVE,
			       NULL);

	return FUNC3(&mvm->fwrt, mvm->fwrt.cur_fw_img);
}