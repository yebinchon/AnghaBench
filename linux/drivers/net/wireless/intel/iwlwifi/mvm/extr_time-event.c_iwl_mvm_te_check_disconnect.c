
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int csa_bcn_pending; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {scalar_t__ dtim_period; scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;


 int IWL_ERR (struct iwl_mvm*,char*,char const*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int iwl_mvm_connection_loss (struct iwl_mvm*,struct ieee80211_vif*,char const*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static bool iwl_mvm_te_check_disconnect(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     const char *errmsg)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (vif->type != NL80211_IFTYPE_STATION)
  return 0;

 if (!mvmvif->csa_bcn_pending && vif->bss_conf.assoc &&
     vif->bss_conf.dtim_period)
  return 0;
 if (errmsg)
  IWL_ERR(mvm, "%s\n", errmsg);

 iwl_mvm_connection_loss(mvm, vif, errmsg);
 return 1;
}
