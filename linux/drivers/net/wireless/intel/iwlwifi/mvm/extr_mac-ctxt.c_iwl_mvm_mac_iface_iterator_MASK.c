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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm_vif {int /*<<< orphan*/  id; } ;
struct iwl_mvm_mac_iface_iterator_data {int found_vif; int /*<<< orphan*/  available_mac_ids; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC3(void *_data, u8 *mac,
				       struct ieee80211_vif *vif)
{
	struct iwl_mvm_mac_iface_iterator_data *data = _data;
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);

	/* Iterator may already find the interface being added -- skip it */
	if (vif == data->vif) {
		data->found_vif = true;
		return;
	}

	/* Mark MAC IDs as used by clearing the available bit, and
	 * (below) mark TSFs as used if their existing use is not
	 * compatible with the new interface type.
	 * No locking or atomic bit operations are needed since the
	 * data is on the stack of the caller function.
	 */
	FUNC0(mvmvif->id, data->available_mac_ids);

	/* find a suitable tsf_id */
	FUNC1(_data, mac, vif);
}