
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int uploaded; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int addr; } ;


 int EIO ;
 int FW_CTXT_ACTION_ADD ;
 scalar_t__ WARN_ONCE (int,char*,int ,int ) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctx_send (struct iwl_mvm*,struct ieee80211_vif*,int ,int,int *) ;
 int iwl_mvm_set_last_nonqos_seq (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

int iwl_mvm_mac_ctxt_add(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 if (WARN_ONCE(mvmvif->uploaded, "Adding active MAC %pM/%d\n",
        vif->addr, ieee80211_vif_type_p2p(vif)))
  return -EIO;

 ret = iwl_mvm_mac_ctx_send(mvm, vif, FW_CTXT_ACTION_ADD,
       1, ((void*)0));
 if (ret)
  return ret;


 iwl_mvm_set_last_nonqos_seq(mvm, vif);

 mvmvif->uploaded = 1;
 return 0;
}
