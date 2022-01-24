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
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct iwl_bss_iter_data {struct ieee80211_vif* vif; scalar_t__ error; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ieee80211_vif* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_bss_iter_data*) ; 
 int /*<<< orphan*/  iwl_mvm_bss_iface_iterator ; 

struct ieee80211_vif *FUNC3(struct iwl_mvm *mvm)
{
	struct iwl_bss_iter_data bss_iter_data = {};

	FUNC2(
		mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
		iwl_mvm_bss_iface_iterator, &bss_iter_data);

	if (bss_iter_data.error) {
		FUNC1(mvm, "More than one managed interface active!\n");
		return FUNC0(-EINVAL);
	}

	return bss_iter_data.vif;
}