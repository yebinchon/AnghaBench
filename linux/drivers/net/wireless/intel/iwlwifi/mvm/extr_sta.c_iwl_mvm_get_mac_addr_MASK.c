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
typedef  size_t u8 ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {size_t* addr; } ;

/* Variables and functions */
 scalar_t__ IWL_MVM_INVALID_STA ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 struct iwl_mvm_vif* FUNC0 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u8 *FUNC3(struct iwl_mvm *mvm,
				       struct ieee80211_vif *vif,
				       struct ieee80211_sta *sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC0(vif);

	if (sta)
		return sta->addr;

	if (vif->type == NL80211_IFTYPE_STATION &&
	    mvmvif->ap_sta_id != IWL_MVM_INVALID_STA) {
		u8 sta_id = mvmvif->ap_sta_id;
		sta = FUNC2(mvm->fw_id_to_mac_id[sta_id],
						FUNC1(&mvm->mutex));
		return sta->addr;
	}


	return NULL;
}