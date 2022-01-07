
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iwl_mvm_vif {int he_ru_2mhz_block; int ap_assoc_sta_count; TYPE_4__* phy_ctxt; } ;
struct iwl_mvm_sta {int sta_state; int sta_id; } ;
struct iwl_mvm {int last_ebs_successful; int mutex; int status; int add_stream_wk; } ;
struct TYPE_6__ {int beacon_int; scalar_t__ he_support; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; scalar_t__ p2p; } ;
struct TYPE_7__ {scalar_t__ has_he; } ;
struct ieee80211_sta {int max_rc_amsdu_len; scalar_t__ tdls; int addr; TYPE_2__ he_cap; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_10__ {int disable_11ax; } ;
struct TYPE_9__ {TYPE_3__* channel; } ;
struct TYPE_8__ {int band; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_AUTHORIZED ;
 int IEEE80211_STA_NONE ;
 int IEEE80211_STA_NOTEXIST ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*,int ,int) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_STATUS_HW_RESTART_REQUESTED ;
 int IWL_MVM_TDLS_FW_TID ;
 scalar_t__ IWL_MVM_TDLS_STA_COUNT ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NL80211_TDLS_DISABLE_LINK ;
 int NL80211_TDLS_ENABLE_LINK ;
 int NL80211_TDLS_SETUP ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int flush_work (int *) ;
 int ieee80211_reserve_tid (struct ieee80211_sta*,int ) ;
 int ieee80211_unreserve_tid (struct ieee80211_sta*,int ) ;
 int iwl_mvm_add_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_cfg_he_sta (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_check_he_obss_narrow_bw_ru (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int iwl_mvm_check_uapsd (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_disable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_enable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*,int,int *) ;
 int iwl_mvm_phy_ctx_count (struct iwl_mvm*) ;
 int iwl_mvm_recalc_tdls_state (struct iwl_mvm*,struct ieee80211_vif*,int) ;
 int iwl_mvm_rm_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_rs_rate_init (struct iwl_mvm*,struct ieee80211_sta*,int ,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_tdls_check_trigger (struct iwl_mvm*,struct ieee80211_vif*,int ,int ) ;
 scalar_t__ iwl_mvm_tdls_sta_count (struct iwl_mvm*,int *) ;
 int iwl_mvm_teardown_tdls_peers (struct iwl_mvm*) ;
 int iwl_mvm_update_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 TYPE_5__ iwlwifi_mod_params ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int iwl_mvm_mac_sta_state(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     enum ieee80211_sta_state old_state,
     enum ieee80211_sta_state new_state)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);
 int ret;

 IWL_DEBUG_MAC80211(mvm, "station %pM state change %d->%d\n",
      sta->addr, old_state, new_state);


 if (WARN_ON_ONCE(!mvmvif->phy_ctxt))
  return -EINVAL;
 if (old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_NOTEXIST) {
  flush_work(&mvm->add_stream_wk);





 }

 mutex_lock(&mvm->mutex);

 mvm_sta->sta_state = new_state;

 if (old_state == IEEE80211_STA_NOTEXIST &&
     new_state == IEEE80211_STA_NONE) {







  if (vif->type == NL80211_IFTYPE_STATION &&
      vif->bss_conf.beacon_int < 16) {
   IWL_ERR(mvm,
    "AP %pM beacon interval is %d, refusing due to firmware bug!\n",
    sta->addr, vif->bss_conf.beacon_int);
   ret = -EINVAL;
   goto out_unlock;
  }

  if (sta->tdls &&
      (vif->p2p ||
       iwl_mvm_tdls_sta_count(mvm, ((void*)0)) ==
      IWL_MVM_TDLS_STA_COUNT ||
       iwl_mvm_phy_ctx_count(mvm) > 1)) {
   IWL_DEBUG_MAC80211(mvm, "refusing TDLS sta\n");
   ret = -EBUSY;
   goto out_unlock;
  }

  ret = iwl_mvm_add_sta(mvm, vif, sta);
  if (sta->tdls && ret == 0) {
   iwl_mvm_recalc_tdls_state(mvm, vif, 1);
   iwl_mvm_tdls_check_trigger(mvm, vif, sta->addr,
         NL80211_TDLS_SETUP);
  }

  sta->max_rc_amsdu_len = 1;
 } else if (old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_AUTH) {




  mvm->last_ebs_successful = 1;
  iwl_mvm_check_uapsd(mvm, vif, sta->addr);
  ret = 0;
 } else if (old_state == IEEE80211_STA_AUTH &&
     new_state == IEEE80211_STA_ASSOC) {
  if (vif->type == NL80211_IFTYPE_AP) {
   vif->bss_conf.he_support = sta->he_cap.has_he;
   mvmvif->ap_assoc_sta_count++;
   iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
   if (vif->bss_conf.he_support &&
       !iwlwifi_mod_params.disable_11ax)
    iwl_mvm_cfg_he_sta(mvm, vif, mvm_sta->sta_id);
  } else if (vif->type == NL80211_IFTYPE_STATION) {
   vif->bss_conf.he_support = sta->he_cap.has_he;

   mvmvif->he_ru_2mhz_block = 0;
   if (sta->he_cap.has_he)
    iwl_mvm_check_he_obss_narrow_bw_ru(hw, vif);

   iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
  }

  iwl_mvm_rs_rate_init(mvm, sta, mvmvif->phy_ctxt->channel->band,
         0);
  ret = iwl_mvm_update_sta(mvm, vif, sta);
 } else if (old_state == IEEE80211_STA_ASSOC &&
     new_state == IEEE80211_STA_AUTHORIZED) {
  ret = 0;


  if (iwl_mvm_phy_ctx_count(mvm) > 1)
   iwl_mvm_teardown_tdls_peers(mvm);

  if (sta->tdls)
   iwl_mvm_tdls_check_trigger(mvm, vif, sta->addr,
         NL80211_TDLS_ENABLE_LINK);


  WARN_ON(iwl_mvm_enable_beacon_filter(mvm, vif, 0));






  iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));

  iwl_mvm_rs_rate_init(mvm, sta, mvmvif->phy_ctxt->channel->band,
         1);
 } else if (old_state == IEEE80211_STA_AUTHORIZED &&
     new_state == IEEE80211_STA_ASSOC) {

  iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));


  ret = iwl_mvm_disable_beacon_filter(mvm, vif, 0);
  WARN_ON(ret &&
   !test_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
      &mvm->status));
  ret = 0;
 } else if (old_state == IEEE80211_STA_ASSOC &&
     new_state == IEEE80211_STA_AUTH) {
  if (vif->type == NL80211_IFTYPE_AP) {
   mvmvif->ap_assoc_sta_count--;
   iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
  }
  ret = 0;
 } else if (old_state == IEEE80211_STA_AUTH &&
     new_state == IEEE80211_STA_NONE) {
  ret = 0;
 } else if (old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_NOTEXIST) {
  ret = iwl_mvm_rm_sta(mvm, vif, sta);
  if (sta->tdls) {
   iwl_mvm_recalc_tdls_state(mvm, vif, 0);
   iwl_mvm_tdls_check_trigger(mvm, vif, sta->addr,
         NL80211_TDLS_DISABLE_LINK);
  }

  if (unlikely(ret &&
        test_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
          &mvm->status)))
   ret = 0;
 } else {
  ret = -EIO;
 }
 out_unlock:
 mutex_unlock(&mvm->mutex);

 if (sta->tdls && ret == 0) {
  if (old_state == IEEE80211_STA_NOTEXIST &&
      new_state == IEEE80211_STA_NONE)
   ieee80211_reserve_tid(sta, IWL_MVM_TDLS_FW_TID);
  else if (old_state == IEEE80211_STA_NONE &&
    new_state == IEEE80211_STA_NOTEXIST)
   ieee80211_unreserve_tid(sta, IWL_MVM_TDLS_FW_TID);
 }

 return ret;
}
