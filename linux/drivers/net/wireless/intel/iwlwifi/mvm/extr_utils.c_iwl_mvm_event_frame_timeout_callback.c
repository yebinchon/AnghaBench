
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int frame_timeout; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;


 int BIT (int ) ;
 int FW_DBG_TRIGGER_BA ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,int ,int ) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 int le16_to_cpu (int ) ;

void iwl_mvm_event_frame_timeout_callback(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       const struct ieee80211_sta *sta,
       u16 tid)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_ba *ba_trig;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ieee80211_vif_to_wdev(vif),
         FW_DBG_TRIGGER_BA);
 if (!trig)
  return;

 ba_trig = (void *)trig->data;

 if (!(le16_to_cpu(ba_trig->frame_timeout) & BIT(tid)))
  return;

 iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
    "Frame from %pM timed out, tid %d",
    sta->addr, tid);
}
