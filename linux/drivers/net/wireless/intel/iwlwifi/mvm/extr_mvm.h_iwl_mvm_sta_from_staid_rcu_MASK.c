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
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ieee80211_sta*) ; 
 struct iwl_mvm_sta* FUNC2 (struct ieee80211_sta*) ; 
 struct ieee80211_sta* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct iwl_mvm_sta *
FUNC4(struct iwl_mvm *mvm, u8 sta_id)
{
	struct ieee80211_sta *sta;

	if (sta_id >= FUNC0(mvm->fw_id_to_mac_id))
		return NULL;

	sta = FUNC3(mvm->fw_id_to_mac_id[sta_id]);

	/* This can happen if the station has been removed right now */
	if (FUNC1(sta))
		return NULL;

	return FUNC2(sta);
}