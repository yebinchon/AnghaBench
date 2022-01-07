
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_mlme {scalar_t__ stop_connection_loss; } ;
struct ieee80211_vif {int dummy; } ;


 int FW_DBG_TRIGGER_MLME ;
 int ieee80211_connection_loss (struct ieee80211_vif*) ;
 int ieee80211_vif_to_wdev (struct ieee80211_vif*) ;
 int iwl_fw_dbg_collect_trig (int *,struct iwl_fw_dbg_trigger_tlv*,char*,char const*) ;
 struct iwl_fw_dbg_trigger_tlv* iwl_fw_dbg_trigger_on (int *,int ,int ) ;

void iwl_mvm_connection_loss(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
        const char *errmsg)
{
 struct iwl_fw_dbg_trigger_tlv *trig;
 struct iwl_fw_dbg_trigger_mlme *trig_mlme;

 trig = iwl_fw_dbg_trigger_on(&mvm->fwrt, ieee80211_vif_to_wdev(vif),
         FW_DBG_TRIGGER_MLME);
 if (!trig)
  goto out;

 trig_mlme = (void *)trig->data;

 if (trig_mlme->stop_connection_loss &&
     --trig_mlme->stop_connection_loss)
  goto out;

 iwl_fw_dbg_collect_trig(&mvm->fwrt, trig, "%s", errmsg);

out:
 ieee80211_connection_loss(vif);
}
