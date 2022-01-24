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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm_iface_iterator_data {size_t idx; int /*<<< orphan*/ * colors; int /*<<< orphan*/ * ids; struct iwl_mvm_phy_ctxt* phyctxt; struct ieee80211_vif* ignore_vif; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_MODIFY ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 size_t MAX_MACS_IN_BINDING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_iface_iterator_data*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,struct iwl_mvm_iface_iterator_data*) ; 
 int /*<<< orphan*/  iwl_mvm_iface_iterator ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
				  struct ieee80211_vif *vif,
				  struct iwl_mvm_phy_ctxt *phyctxt,
				  bool add)
{
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);
	struct iwl_mvm_iface_iterator_data data = {
		.ignore_vif = vif,
		.phyctxt = phyctxt,
	};
	u32 action = FW_CTXT_ACTION_MODIFY;

	FUNC4(&mvm->mutex);

	FUNC1(mvm->hw,
						   IEEE80211_IFACE_ITER_NORMAL,
						   iwl_mvm_iface_iterator,
						   &data);

	/*
	 * If there are no other interfaces yet we
	 * need to create a new binding.
	 */
	if (data.idx == 0) {
		if (add)
			action = FW_CTXT_ACTION_ADD;
		else
			action = FW_CTXT_ACTION_REMOVE;
	}

	if (add) {
		if (FUNC0(data.idx >= MAX_MACS_IN_BINDING))
			return -EINVAL;

		data.ids[data.idx] = mvmvif->id;
		data.colors[data.idx] = mvmvif->color;
		data.idx++;
	}

	return FUNC2(mvm, action, &data);
}