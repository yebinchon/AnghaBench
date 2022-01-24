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
struct iwl_trans {int /*<<< orphan*/  system_pm_mode; } ;
struct iwl_mvm {int /*<<< orphan*/  fwrt; struct iwl_trans* trans; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_PLAT_PM_MODE_D3 ; 
 int FUNC1 (struct ieee80211_hw*,struct cfg80211_wowlan*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,int) ; 
 int FUNC4 (struct iwl_trans*) ; 

int FUNC5(struct ieee80211_hw *hw, struct cfg80211_wowlan *wowlan)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_trans *trans = mvm->trans;
	int ret;

	FUNC3(mvm, true);

	FUNC2(&mvm->fwrt);

	ret = FUNC4(trans);
	if (ret)
		return ret;

	trans->system_pm_mode = IWL_PLAT_PM_MODE_D3;

	return FUNC1(hw, wowlan, false);
}