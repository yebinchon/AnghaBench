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
struct iwl_power_vifs {scalar_t__ bss_vif; scalar_t__ p2p_vif; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_power_vifs*) ; 
 int /*<<< orphan*/  iwl_mvm_power_get_vifs_iterator ; 
 int FUNC1 (struct iwl_mvm*,scalar_t__) ; 
 int FUNC2 (struct iwl_mvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_power_vifs*) ; 
 int FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_mvm *mvm)
{
	struct iwl_power_vifs vifs = {
		.mvm = mvm,
	};
	int ret;

	FUNC5(&mvm->mutex);

	/* get vifs info */
	FUNC0(mvm->hw,
					IEEE80211_IFACE_ITER_NORMAL,
					iwl_mvm_power_get_vifs_iterator, &vifs);

	FUNC3(mvm, &vifs);

	ret = FUNC4(mvm);
	if (ret)
		return ret;

	if (vifs.bss_vif) {
		ret = FUNC1(mvm, vifs.bss_vif);
		if (ret)
			return ret;
	}

	if (vifs.p2p_vif) {
		ret = FUNC1(mvm, vifs.p2p_vif);
		if (ret)
			return ret;
	}

	if (vifs.bss_vif)
		return FUNC2(mvm, vifs.bss_vif);

	return 0;
}