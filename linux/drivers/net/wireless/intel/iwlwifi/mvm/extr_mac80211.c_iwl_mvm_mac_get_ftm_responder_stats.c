
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int ap_ibss_active; } ;
struct cfg80211_ftm_responder_stats {int filled; } ;
struct iwl_mvm {int mutex; struct cfg80211_ftm_responder_stats ftm_resp_stats; } ;
struct TYPE_2__ {int ftm_responder; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int EINVAL ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int NL80211_FTM_STATS_ASAP_NUM ;
 int NL80211_FTM_STATS_FAILED_NUM ;
 int NL80211_FTM_STATS_NON_ASAP_NUM ;
 int NL80211_FTM_STATS_OUT_OF_WINDOW_TRIGGERS_NUM ;
 int NL80211_FTM_STATS_PARTIAL_NUM ;
 int NL80211_FTM_STATS_RESCHEDULE_REQUESTS_NUM ;
 int NL80211_FTM_STATS_SUCCESS_NUM ;
 int NL80211_FTM_STATS_TOTAL_DURATION_MSEC ;
 int NL80211_FTM_STATS_UNKNOWN_TRIGGERS_NUM ;
 scalar_t__ NL80211_IFTYPE_AP ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
iwl_mvm_mac_get_ftm_responder_stats(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct cfg80211_ftm_responder_stats *stats)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (vif->p2p || vif->type != NL80211_IFTYPE_AP ||
     !mvmvif->ap_ibss_active || !vif->bss_conf.ftm_responder)
  return -EINVAL;

 mutex_lock(&mvm->mutex);
 *stats = mvm->ftm_resp_stats;
 mutex_unlock(&mvm->mutex);

 stats->filled = BIT(NL80211_FTM_STATS_SUCCESS_NUM) |
   BIT(NL80211_FTM_STATS_PARTIAL_NUM) |
   BIT(NL80211_FTM_STATS_FAILED_NUM) |
   BIT(NL80211_FTM_STATS_ASAP_NUM) |
   BIT(NL80211_FTM_STATS_NON_ASAP_NUM) |
   BIT(NL80211_FTM_STATS_TOTAL_DURATION_MSEC) |
   BIT(NL80211_FTM_STATS_UNKNOWN_TRIGGERS_NUM) |
   BIT(NL80211_FTM_STATS_RESCHEDULE_REQUESTS_NUM) |
   BIT(NL80211_FTM_STATS_OUT_OF_WINDOW_TRIGGERS_NUM);

 return 0;
}
