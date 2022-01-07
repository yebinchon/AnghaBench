
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int rx_bar; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_5__ {int ssn; int tid; TYPE_1__* sta; } ;
struct TYPE_6__ {TYPE_2__ ba; } ;
struct ieee80211_event {TYPE_3__ u; } ;
struct TYPE_4__ {int addr; } ;


 int BIT (int ) ;
 int FW_DBG_TRIGGER_BA ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,int ,int ,int ) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_event_bar_rx_callback(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       const struct ieee80211_event *event)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_ba *ba_trig;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ieee80211_vif_to_wdev(vif),
         FW_DBG_TRIGGER_BA);
 if (!trig)
  return;

 ba_trig = (void *)trig->data;

 if (!(le16_to_cpu(ba_trig->rx_bar) & BIT(event->u.ba.tid)))
  return;

 iwl_fw_dbg_collect_trig(&mvm->fwrt, trig,
    "BAR received from %pM, tid %d, ssn %d",
    event->u.ba.sta->addr, event->u.ba.tid,
    event->u.ba.ssn);
}
