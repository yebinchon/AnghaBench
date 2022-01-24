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
struct iwl_mvm_vif {scalar_t__ tsf_id; } ;
struct iwl_mvm_mac_iface_iterator_data {scalar_t__ preferred_tsf; int /*<<< orphan*/  available_tsf_ids; struct ieee80211_vif* vif; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 scalar_t__ NUM_TSF_IDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_mac_iface_iterator_data*) ; 
 int /*<<< orphan*/  iwl_mvm_mac_tsf_id_iter ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4(struct iwl_mvm *mvm,
				    struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);
	struct iwl_mvm_mac_iface_iterator_data data = {
		.mvm = mvm,
		.vif = vif,
		.available_tsf_ids = (1 << NUM_TSF_IDS) - 1 ,
		/* no preference yet */
		.preferred_tsf = NUM_TSF_IDS,
	};

	FUNC1(
		mvm->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
		iwl_mvm_mac_tsf_id_iter, &data);

	if (data.preferred_tsf != NUM_TSF_IDS)
		mvmvif->tsf_id = data.preferred_tsf;
	else if (!FUNC3(mvmvif->tsf_id, data.available_tsf_ids))
		mvmvif->tsf_id = FUNC0(data.available_tsf_ids,
						NUM_TSF_IDS);
}