
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ bf_enabled; scalar_t__ last_cqm_event; scalar_t__ ave_beacon_signal; } ;
struct iwl_mvm_vif {TYPE_3__ bf_data; int ap_sta_id; int beacon_stats; scalar_t__ associated; int * bssid; } ;
struct iwl_mvm {TYPE_2__* fw; int status; } ;
struct TYPE_5__ {int beacon_int; scalar_t__ he_support; } ;
struct ieee80211_vif {scalar_t__ mu_mimo_owner; int addr; scalar_t__ p2p; TYPE_1__ bss_conf; } ;
struct ieee80211_bss_conf {int txpower; scalar_t__ assoc; int bssid; } ;
struct TYPE_8__ {int disable_11ax; } ;
struct TYPE_6__ {int ucode_capa; } ;


 int BSS_CHANGED_ARP_FILTER ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_INFO ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_CQM ;
 int BSS_CHANGED_MU_GROUPS ;
 int BSS_CHANGED_P2P_PS ;
 int BSS_CHANGED_PS ;
 int BSS_CHANGED_QOS ;
 int BSS_CHANGED_TXPOWER ;
 int ETH_ALEN ;
 int IEEE80211_SMPS_AUTOMATIC ;
 int IEEE80211_SMPS_DYNAMIC ;
 int IWL_DEBUG_CALIB (struct iwl_mvm*,char*,int ) ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int IWL_MVM_INVALID_STA ;
 int IWL_MVM_SMPS_REQ_PROT ;
 int IWL_MVM_SMPS_REQ_TT ;
 int IWL_MVM_STATUS_HW_RESTART_REQUESTED ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int IWL_UCODE_TLV_CAPA_UMAC_SCAN ;
 int WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_mvm_bt_coex_vif_change (struct iwl_mvm*) ;
 int iwl_mvm_cfg_he_sta (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_config_scan (struct iwl_mvm*) ;
 int iwl_mvm_configure_bcast_filter (struct iwl_mvm*) ;
 int iwl_mvm_enable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*,int,int *) ;
 int iwl_mvm_mac_ctxt_recalc_tsf_id (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_power_vif_assoc (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_protect_session (struct iwl_mvm*,struct ieee80211_vif*,int,int,int,int) ;
 int iwl_mvm_recalc_multicast (struct iwl_mvm*) ;
 int iwl_mvm_request_statistics (struct iwl_mvm*,int) ;
 int iwl_mvm_rm_sta_id (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_set_tx_power (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_sf_update (struct iwl_mvm*,struct ieee80211_vif*,int) ;
 int iwl_mvm_stop_session_protection (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_update_mu_groups (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,int *) ;
 int iwl_mvm_update_smps (struct iwl_mvm*,struct ieee80211_vif*,int ,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 TYPE_4__ iwlwifi_mod_params ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_mvm_bss_info_changed_station(struct iwl_mvm *mvm,
          struct ieee80211_vif *vif,
          struct ieee80211_bss_conf *bss_conf,
          u32 changes)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;






 if (changes & BSS_CHANGED_ASSOC && bss_conf->assoc) {
  if (vif->bss_conf.he_support &&
      !iwlwifi_mod_params.disable_11ax)
   iwl_mvm_cfg_he_sta(mvm, vif, mvmvif->ap_sta_id);

  iwl_mvm_mac_ctxt_recalc_tsf_id(mvm, vif);
 }


 if (changes & BSS_CHANGED_QOS && mvmvif->associated &&
     bss_conf->assoc && vif->bss_conf.he_support &&
     !iwlwifi_mod_params.disable_11ax)
  iwl_mvm_cfg_he_sta(mvm, vif, mvmvif->ap_sta_id);







 if (changes & BSS_CHANGED_BSSID && !mvmvif->associated)
  memcpy(mvmvif->bssid, bss_conf->bssid, ETH_ALEN);

 ret = iwl_mvm_mac_ctxt_changed(mvm, vif, 0, mvmvif->bssid);
 if (ret)
  IWL_ERR(mvm, "failed to update MAC %pM\n", vif->addr);


 memcpy(mvmvif->bssid, bss_conf->bssid, ETH_ALEN);
 mvmvif->associated = bss_conf->assoc;

 if (changes & BSS_CHANGED_ASSOC) {
  if (bss_conf->assoc) {

   iwl_mvm_request_statistics(mvm, 1);
   memset(&mvmvif->beacon_stats, 0,
          sizeof(mvmvif->beacon_stats));


   ret = iwl_mvm_update_quotas(mvm, 1, ((void*)0));
   if (ret) {
    IWL_ERR(mvm, "failed to update quotas\n");
    return;
   }

   if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART,
         &mvm->status)) {
    u32 dur = (11 * vif->bss_conf.beacon_int) / 10;
    iwl_mvm_protect_session(mvm, vif, dur, dur,
       5 * dur, 0);
   }

   iwl_mvm_sf_update(mvm, vif, 0);
   iwl_mvm_power_vif_assoc(mvm, vif);
   if (vif->p2p) {
    iwl_mvm_update_smps(mvm, vif,
          IWL_MVM_SMPS_REQ_PROT,
          IEEE80211_SMPS_DYNAMIC);
   }
  } else if (mvmvif->ap_sta_id != IWL_MVM_INVALID_STA) {




   ret = iwl_mvm_sf_update(mvm, vif, 0);
   WARN_ONCE(ret &&
      !test_bit(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
         &mvm->status),
      "Failed to update SF upon disassociation\n");
   if (!test_bit(IWL_MVM_STATUS_IN_HW_RESTART,
          &mvm->status)) {




    ret = iwl_mvm_rm_sta_id(mvm, vif,
       mvmvif->ap_sta_id);
    if (ret)
     IWL_ERR(mvm,
      "failed to remove AP station\n");

    mvmvif->ap_sta_id = IWL_MVM_INVALID_STA;
   }


   ret = iwl_mvm_update_quotas(mvm, 0, ((void*)0));
   if (ret)
    IWL_ERR(mvm, "failed to update quotas\n");


   ret = iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
   if (ret)
    IWL_ERR(mvm,
     "failed to update MAC %pM (clear after unassoc)\n",
     vif->addr);
  }





  if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
      (changes & BSS_CHANGED_MU_GROUPS) && vif->mu_mimo_owner) {
   ret = iwl_mvm_update_mu_groups(mvm, vif);
   if (ret)
    IWL_ERR(mvm,
     "failed to update VHT MU_MIMO groups\n");
  }

  iwl_mvm_recalc_multicast(mvm);
  iwl_mvm_configure_bcast_filter(mvm);


  mvmvif->bf_data.ave_beacon_signal = 0;

  iwl_mvm_bt_coex_vif_change(mvm);
  iwl_mvm_update_smps(mvm, vif, IWL_MVM_SMPS_REQ_TT,
        IEEE80211_SMPS_AUTOMATIC);
  if (fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_UMAC_SCAN))
   iwl_mvm_config_scan(mvm);
 }

 if (changes & BSS_CHANGED_BEACON_INFO) {




  iwl_mvm_stop_session_protection(mvm, vif);

  iwl_mvm_sf_update(mvm, vif, 0);
  WARN_ON(iwl_mvm_enable_beacon_filter(mvm, vif, 0));
 }

 if (changes & (BSS_CHANGED_PS | BSS_CHANGED_P2P_PS | BSS_CHANGED_QOS |




         BSS_CHANGED_BEACON_INFO)) {
  ret = iwl_mvm_power_update_mac(mvm);
  if (ret)
   IWL_ERR(mvm, "failed to update power mode\n");
 }

 if (changes & BSS_CHANGED_TXPOWER) {
  IWL_DEBUG_CALIB(mvm, "Changing TX Power to %d\n",
    bss_conf->txpower);
  iwl_mvm_set_tx_power(mvm, vif, bss_conf->txpower);
 }

 if (changes & BSS_CHANGED_CQM) {
  IWL_DEBUG_MAC80211(mvm, "cqm info_changed\n");

  mvmvif->bf_data.last_cqm_event = 0;
  if (mvmvif->bf_data.bf_enabled) {
   ret = iwl_mvm_enable_beacon_filter(mvm, vif, 0);
   if (ret)
    IWL_ERR(mvm,
     "failed to update CQM thresholds\n");
  }
 }

 if (changes & BSS_CHANGED_ARP_FILTER) {
  IWL_DEBUG_MAC80211(mvm, "arp filter changed\n");
  iwl_mvm_configure_bcast_filter(mvm);
 }
}
