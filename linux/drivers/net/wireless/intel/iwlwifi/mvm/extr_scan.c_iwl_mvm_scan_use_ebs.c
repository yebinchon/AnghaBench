
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_ucode_capabilities {int flags; } ;
struct iwl_mvm {scalar_t__ last_ebs_successful; TYPE_1__* fw; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_2__ {struct iwl_ucode_capabilities ucode_capa; } ;


 scalar_t__ IWL_MVM_ENABLE_EBS ;
 int IWL_UCODE_TLV_FLAGS_EBS_SUPPORT ;
 int NL80211_BAND_5GHZ ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ iwl_mvm_is_cdb_supported (struct iwl_mvm*) ;
 scalar_t__ iwl_mvm_is_frag_ebs_supported (struct iwl_mvm*) ;
 int iwl_mvm_low_latency (struct iwl_mvm*) ;
 int iwl_mvm_low_latency_band (struct iwl_mvm*,int ) ;

__attribute__((used)) static inline bool iwl_mvm_scan_use_ebs(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif)
{
 const struct iwl_ucode_capabilities *capa = &mvm->fw->ucode_capa;
 bool low_latency;

 if (iwl_mvm_is_cdb_supported(mvm))
  low_latency = iwl_mvm_low_latency_band(mvm, NL80211_BAND_5GHZ);
 else
  low_latency = iwl_mvm_low_latency(mvm);
 return ((capa->flags & IWL_UCODE_TLV_FLAGS_EBS_SUPPORT) &&
  mvm->last_ebs_successful && IWL_MVM_ENABLE_EBS &&
  vif->type != NL80211_IFTYPE_P2P_DEVICE &&
  (!low_latency || iwl_mvm_is_frag_ebs_supported(mvm)));
}
