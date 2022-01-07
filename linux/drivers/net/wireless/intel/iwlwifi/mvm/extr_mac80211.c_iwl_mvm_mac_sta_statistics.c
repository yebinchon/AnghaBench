
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct station_info {int filled; scalar_t__ rx_beacon_signal_avg; scalar_t__ rx_beacon; scalar_t__ signal_avg; } ;
struct TYPE_4__ {scalar_t__ avg_signal; scalar_t__ accu_num_beacons; scalar_t__ num_beacons; } ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; TYPE_2__ beacon_stats; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; scalar_t__ avg_energy; } ;
struct iwl_mvm {int mutex; } ;
struct TYPE_3__ {int assoc; } ;
struct ieee80211_vif {int driver_flags; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT_ULL (int ) ;
 int IEEE80211_VIF_BEACON_FILTER ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int NL80211_STA_INFO_BEACON_RX ;
 int NL80211_STA_INFO_BEACON_SIGNAL_AVG ;
 int NL80211_STA_INFO_SIGNAL_AVG ;
 scalar_t__ iwl_mvm_request_statistics (struct iwl_mvm*,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_mac_sta_statistics(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_sta *sta,
           struct station_info *sinfo)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);

 if (mvmsta->avg_energy) {
  sinfo->signal_avg = mvmsta->avg_energy;
  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_SIGNAL_AVG);
 }


 if (!(vif->driver_flags & IEEE80211_VIF_BEACON_FILTER))
  return;

 if (!vif->bss_conf.assoc)
  return;

 mutex_lock(&mvm->mutex);

 if (mvmvif->ap_sta_id != mvmsta->sta_id)
  goto unlock;

 if (iwl_mvm_request_statistics(mvm, 0))
  goto unlock;

 sinfo->rx_beacon = mvmvif->beacon_stats.num_beacons +
      mvmvif->beacon_stats.accu_num_beacons;
 sinfo->filled |= BIT_ULL(NL80211_STA_INFO_BEACON_RX);
 if (mvmvif->beacon_stats.avg_signal) {

  sinfo->rx_beacon_signal_avg = mvmvif->beacon_stats.avg_signal;
  sinfo->filled |= BIT_ULL(NL80211_STA_INFO_BEACON_SIGNAL_AVG);
 }
 unlock:
 mutex_unlock(&mvm->mutex);
}
