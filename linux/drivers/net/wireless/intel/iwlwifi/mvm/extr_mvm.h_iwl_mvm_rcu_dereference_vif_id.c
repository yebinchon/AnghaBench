
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm {int mutex; int * vif_id_to_mac; } ;
struct ieee80211_vif {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 scalar_t__ WARN_ON (int) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_vif* rcu_dereference (int ) ;
 struct ieee80211_vif* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct ieee80211_vif *
iwl_mvm_rcu_dereference_vif_id(struct iwl_mvm *mvm, u8 vif_id, bool rcu)
{
 if (WARN_ON(vif_id >= ARRAY_SIZE(mvm->vif_id_to_mac)))
  return ((void*)0);

 if (rcu)
  return rcu_dereference(mvm->vif_id_to_mac[vif_id]);

 return rcu_dereference_protected(mvm->vif_id_to_mac[vif_id],
      lockdep_is_held(&mvm->mutex));
}
