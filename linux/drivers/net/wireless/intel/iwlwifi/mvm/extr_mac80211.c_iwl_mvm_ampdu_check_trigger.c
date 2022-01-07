
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_tid_data {int ssn; } ;
struct iwl_mvm_sta {struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int rx_ba_stop; int rx_ba_start; int tx_ba_stop; int tx_ba_start; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int CHECK_BA_TRIGGER (struct iwl_mvm*,struct iwl_fw_dbg_trigger_tlv*,int ,size_t,char*,int ,size_t,...) ;
 int FW_DBG_TRIGGER_BA ;




 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;

__attribute__((used)) static void
iwl_mvm_ampdu_check_trigger(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, u16 tid, u16 rx_ba_ssn,
       enum ieee80211_ampdu_mlme_action action)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_ba *ba_trig;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ieee80211_vif_to_wdev(vif),
         FW_DBG_TRIGGER_BA);
 if (!trig)
  return;

 ba_trig = (void *)trig->data;

 switch (action) {
 case 129: {
  struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
  struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];

  CHECK_BA_TRIGGER(mvm, trig, ba_trig->tx_ba_start, tid,
     "TX AGG START: MAC %pM tid %d ssn %d\n",
     sta->addr, tid, tid_data->ssn);
  break;
  }
 case 128:
  CHECK_BA_TRIGGER(mvm, trig, ba_trig->tx_ba_stop, tid,
     "TX AGG STOP: MAC %pM tid %d\n",
     sta->addr, tid);
  break;
 case 131:
  CHECK_BA_TRIGGER(mvm, trig, ba_trig->rx_ba_start, tid,
     "RX AGG START: MAC %pM tid %d ssn %d\n",
     sta->addr, tid, rx_ba_ssn);
  break;
 case 130:
  CHECK_BA_TRIGGER(mvm, trig, ba_trig->rx_ba_stop, tid,
     "RX AGG STOP: MAC %pM tid %d\n",
     sta->addr, tid);
  break;
 default:
  break;
 }
}
