#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct station_info {int /*<<< orphan*/  filled; scalar_t__ rx_beacon_signal_avg; scalar_t__ rx_beacon; scalar_t__ signal_avg; } ;
struct TYPE_4__ {scalar_t__ avg_signal; scalar_t__ accu_num_beacons; scalar_t__ num_beacons; } ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; TYPE_2__ beacon_stats; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; scalar_t__ avg_energy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  assoc; } ;
struct ieee80211_vif {int driver_flags; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IEEE80211_VIF_BEACON_FILTER ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  NL80211_STA_INFO_BEACON_RX ; 
 int /*<<< orphan*/  NL80211_STA_INFO_BEACON_SIGNAL_AVG ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL_AVG ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,int) ; 
 struct iwl_mvm_sta* FUNC3 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_sta *sta,
				       struct station_info *sinfo)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	struct iwl_mvm_sta *mvmsta = FUNC3(sta);

	if (mvmsta->avg_energy) {
		sinfo->signal_avg = mvmsta->avg_energy;
		sinfo->filled |= FUNC0(NL80211_STA_INFO_SIGNAL_AVG);
	}

	/* if beacon filtering isn't on mac80211 does it anyway */
	if (!(vif->driver_flags & IEEE80211_VIF_BEACON_FILTER))
		return;

	if (!vif->bss_conf.assoc)
		return;

	FUNC5(&mvm->mutex);

	if (mvmvif->ap_sta_id != mvmsta->sta_id)
		goto unlock;

	if (FUNC2(mvm, false))
		goto unlock;

	sinfo->rx_beacon = mvmvif->beacon_stats.num_beacons +
			   mvmvif->beacon_stats.accu_num_beacons;
	sinfo->filled |= FUNC0(NL80211_STA_INFO_BEACON_RX);
	if (mvmvif->beacon_stats.avg_signal) {
		/* firmware only reports a value after RXing a few beacons */
		sinfo->rx_beacon_signal_avg = mvmvif->beacon_stats.avg_signal;
		sinfo->filled |= FUNC0(NL80211_STA_INFO_BEACON_SIGNAL_AVG);
	}
 unlock:
	FUNC6(&mvm->mutex);
}