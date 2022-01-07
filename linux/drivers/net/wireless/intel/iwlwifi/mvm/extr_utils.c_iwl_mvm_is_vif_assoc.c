
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_sta_iter_data {int assoc; } ;
struct iwl_mvm {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_sta_iter_data*) ;
 int iwl_mvm_sta_iface_iterator ;

bool iwl_mvm_is_vif_assoc(struct iwl_mvm *mvm)
{
 struct iwl_sta_iter_data data = {
  .assoc = 0,
 };

 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         iwl_mvm_sta_iface_iterator,
         &data);
 return data.assoc;
}
