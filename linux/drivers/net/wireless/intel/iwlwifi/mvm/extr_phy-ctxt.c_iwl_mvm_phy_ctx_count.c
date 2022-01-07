
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int hweight8 (unsigned long) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,unsigned long*) ;
 int iwl_mvm_binding_iterator ;

int iwl_mvm_phy_ctx_count(struct iwl_mvm *mvm)
{
 unsigned long phy_ctxt_counter = 0;

 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         iwl_mvm_binding_iterator,
         &phy_ctxt_counter);

 return hweight8(phy_ctxt_counter);
}
