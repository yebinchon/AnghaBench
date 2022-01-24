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
struct iwl_mvm {int /*<<< orphan*/  fwrt; TYPE_1__* trans; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  system_pm_mode; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_PLAT_PM_MODE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 

int FUNC4(struct ieee80211_hw *hw)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	ret = FUNC2(mvm);

	mvm->trans->system_pm_mode = IWL_PLAT_PM_MODE_DISABLED;

	FUNC3(mvm);

	FUNC1(&mvm->fwrt);

	return ret;
}