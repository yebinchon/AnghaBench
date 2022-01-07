
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_tdls {int action_bitmap; int peer; scalar_t__ peer_mode; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;


 int BIT (int) ;
 int ETH_ALEN ;
 int FW_DBG_TRIGGER_TDLS ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,int *,int) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 scalar_t__ memcmp (int ,int *,int ) ;

__attribute__((used)) static void
iwl_mvm_tdls_check_trigger(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif, u8 *peer_addr,
      enum nl80211_tdls_operation action)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_tdls *tdls_trig;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ieee80211_vif_to_wdev(vif),
         FW_DBG_TRIGGER_TDLS);
 if (!trig)
  return;

 tdls_trig = (void *)trig->data;

 if (!(tdls_trig->action_bitmap & BIT(action)))
  return;

 if (tdls_trig->peer_mode &&
     memcmp(tdls_trig->peer, peer_addr, ETH_ALEN) != 0)
  return;

 iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
    "TDLS event occurred, peer %pM, action %d",
    peer_addr, action);
}
