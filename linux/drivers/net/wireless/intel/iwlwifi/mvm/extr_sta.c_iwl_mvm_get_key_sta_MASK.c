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
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_sta*) ; 
 scalar_t__ IWL_MVM_INVALID_STA ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 struct iwl_mvm_sta* FUNC1 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iwl_mvm_sta *FUNC5(struct iwl_mvm *mvm,
					       struct ieee80211_vif *vif,
					       struct ieee80211_sta *sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);

	if (sta)
		return FUNC1(sta);

	/*
	 * The device expects GTKs for station interfaces to be
	 * installed as GTKs for the AP station. If we have no
	 * station ID, then use AP's station ID.
	 */
	if (vif->type == NL80211_IFTYPE_STATION &&
	    mvmvif->ap_sta_id != IWL_MVM_INVALID_STA) {
		u8 sta_id = mvmvif->ap_sta_id;

		sta = FUNC4(mvm->fw_id_to_mac_id[sta_id],
					    FUNC3(&mvm->mutex));

		/*
		 * It is possible that the 'sta' parameter is NULL,
		 * for example when a GTK is removed - the sta_id will then
		 * be the AP ID, and no station was passed by mac80211.
		 */
		if (FUNC0(sta))
			return NULL;

		return FUNC1(sta);
	}

	return NULL;
}