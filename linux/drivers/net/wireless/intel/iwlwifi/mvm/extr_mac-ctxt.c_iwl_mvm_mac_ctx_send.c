
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int type; int p2p; } ;


 int EOPNOTSUPP ;





 int iwl_mvm_mac_ctxt_cmd_ap (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_cmd_go (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_cmd_ibss (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_cmd_listener (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_cmd_p2p_device (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_mac_ctxt_cmd_sta (struct iwl_mvm*,struct ieee80211_vif*,int ,int,int const*) ;

__attribute__((used)) static int iwl_mvm_mac_ctx_send(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
    u32 action, bool force_assoc_off,
    const u8 *bssid_override)
{
 switch (vif->type) {
 case 128:
  return iwl_mvm_mac_ctxt_cmd_sta(mvm, vif, action,
      force_assoc_off,
      bssid_override);
  break;
 case 131:
  if (!vif->p2p)
   return iwl_mvm_mac_ctxt_cmd_ap(mvm, vif, action);
  else
   return iwl_mvm_mac_ctxt_cmd_go(mvm, vif, action);
  break;
 case 130:
  return iwl_mvm_mac_ctxt_cmd_listener(mvm, vif, action);
 case 129:
  return iwl_mvm_mac_ctxt_cmd_p2p_device(mvm, vif, action);
 case 132:
  return iwl_mvm_mac_ctxt_cmd_ibss(mvm, vif, action);
 default:
  break;
 }

 return -EOPNOTSUPP;
}
