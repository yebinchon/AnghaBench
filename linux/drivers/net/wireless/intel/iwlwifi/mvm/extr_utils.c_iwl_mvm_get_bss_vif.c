
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int hw; } ;
struct iwl_bss_iter_data {struct ieee80211_vif* vif; scalar_t__ error; } ;
struct ieee80211_vif {int dummy; } ;


 int EINVAL ;
 struct ieee80211_vif* ERR_PTR (int ) ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_bss_iter_data*) ;
 int iwl_mvm_bss_iface_iterator ;

struct ieee80211_vif *iwl_mvm_get_bss_vif(struct iwl_mvm *mvm)
{
 struct iwl_bss_iter_data bss_iter_data = {};

 ieee80211_iterate_active_interfaces_atomic(
  mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
  iwl_mvm_bss_iface_iterator, &bss_iter_data);

 if (bss_iter_data.error) {
  IWL_ERR(mvm, "More than one managed interface active!\n");
  return ERR_PTR(-EINVAL);
 }

 return bss_iter_data.vif;
}
