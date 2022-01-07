
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iwl_mvm_scan_params {int n_ssids; int flags; int type; scalar_t__ measurement_dwell; scalar_t__ pass_all; int hb_type; TYPE_1__* ssids; } ;
struct iwl_mvm {scalar_t__ sched_scan_pass_all; scalar_t__ scan_iter_notif_enabled; TYPE_2__* fw; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_4__ {int ucode_capa; } ;
struct TYPE_3__ {scalar_t__ ssid_len; } ;


 scalar_t__ IWL_MVM_ADWELL_ENABLE ;
 int IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT ;
 int IWL_UMAC_SCAN_GEN_FLAGS_ADAPTIVE_DWELL ;
 int IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL ;
 int IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED ;
 int IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE ;
 int IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED ;
 int IWL_UMAC_SCAN_GEN_FLAGS_MATCH ;
 int IWL_UMAC_SCAN_GEN_FLAGS_MAX_CHNL_TIME ;
 int IWL_UMAC_SCAN_GEN_FLAGS_PASSIVE ;
 int IWL_UMAC_SCAN_GEN_FLAGS_PASS_ALL ;
 int IWL_UMAC_SCAN_GEN_FLAGS_PERIODIC ;
 int IWL_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT ;
 int IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_DEFER_SUPP ;
 int IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_HIGH_TX_RATE ;
 int IWL_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME ;
 int NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION ;
 int NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE ;
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 scalar_t__ iwl_mvm_is_adaptive_dwell_supported (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_cdb_supported (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_oce_supported (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_regular_scan (struct iwl_mvm_scan_params*) ;
 scalar_t__ iwl_mvm_is_scan_fragmented (int ) ;
 scalar_t__ iwl_mvm_rrm_scan_needed (struct iwl_mvm*) ;

__attribute__((used)) static u16 iwl_mvm_scan_umac_flags(struct iwl_mvm *mvm,
       struct iwl_mvm_scan_params *params,
       struct ieee80211_vif *vif)
{
 u16 flags = 0;

 if (params->n_ssids == 0)
  flags = IWL_UMAC_SCAN_GEN_FLAGS_PASSIVE;

 if (params->n_ssids == 1 && params->ssids[0].ssid_len != 0)
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT;

 if (iwl_mvm_is_scan_fragmented(params->type))
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED;

 if (iwl_mvm_is_cdb_supported(mvm) &&
     iwl_mvm_is_scan_fragmented(params->hb_type))
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED;

 if (iwl_mvm_rrm_scan_needed(mvm) &&
     fw_has_capa(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT))
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED;

 if (params->pass_all)
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_PASS_ALL;
 else
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_MATCH;

 if (!iwl_mvm_is_regular_scan(params))
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_PERIODIC;

 if (params->measurement_dwell)
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE;






 if (mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_ENABLED)
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE;

 if (iwl_mvm_is_adaptive_dwell_supported(mvm) && IWL_MVM_ADWELL_ENABLE &&
     vif->type != NL80211_IFTYPE_P2P_DEVICE)
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_ADAPTIVE_DWELL;






 if (iwl_mvm_is_regular_scan(params) &&
     vif->type != NL80211_IFTYPE_P2P_DEVICE &&
     !iwl_mvm_is_scan_fragmented(params->type) &&
     !iwl_mvm_is_adaptive_dwell_supported(mvm) &&
     !iwl_mvm_is_oce_supported(mvm))
  flags |= IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL;

 if (iwl_mvm_is_oce_supported(mvm)) {
  if ((params->flags &
       NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE))
   flags |= IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_HIGH_TX_RATE;





  if ((params->flags &
       NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION) &&
       !WARN_ON_ONCE(!iwl_mvm_is_adaptive_dwell_supported(mvm)))
   flags |= IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_DEFER_SUPP;
  if ((params->flags & NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME))
   flags |= IWL_UMAC_SCAN_GEN_FLAGS_MAX_CHNL_TIME;
 }

 return flags;
}
