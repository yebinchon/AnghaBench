
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int ftm_responder; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int iwl_mvm_ftm_start_responder (struct iwl_mvm*,struct ieee80211_vif*) ;

void iwl_mvm_ftm_restart_responder(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif)
{
 if (!vif->bss_conf.ftm_responder)
  return;

 iwl_mvm_ftm_start_responder(mvm, vif);
}
