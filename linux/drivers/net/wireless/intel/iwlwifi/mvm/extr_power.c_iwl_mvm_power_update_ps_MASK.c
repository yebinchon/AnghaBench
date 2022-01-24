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
struct iwl_power_vifs {scalar_t__ bss_vif; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_power_vifs*) ; 
 int /*<<< orphan*/  iwl_mvm_power_get_vifs_iterator ; 
 int FUNC1 (struct iwl_mvm*,scalar_t__) ; 
 int FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iwl_mvm *mvm)
{
	struct iwl_power_vifs vifs = {
		.mvm = mvm,
	};
	int ret;

	FUNC3(&mvm->mutex);

	/* get vifs info */
	FUNC0(mvm->hw,
					IEEE80211_IFACE_ITER_NORMAL,
					iwl_mvm_power_get_vifs_iterator, &vifs);

	ret = FUNC2(mvm);
	if (ret)
		return ret;

	if (vifs.bss_vif)
		return FUNC1(mvm, vifs.bss_vif);

	return 0;
}