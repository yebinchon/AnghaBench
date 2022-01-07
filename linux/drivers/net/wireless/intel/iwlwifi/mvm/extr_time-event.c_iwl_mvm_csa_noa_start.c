
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int csa_vif; } ;
struct ieee80211_vif {int csa_active; } ;


 int IWL_DEBUG_TE (struct iwl_mvm*,char*) ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int ieee80211_csa_finish (struct ieee80211_vif*) ;
 int ieee80211_csa_is_complete (struct ieee80211_vif*) ;
 struct ieee80211_vif* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void iwl_mvm_csa_noa_start(struct iwl_mvm *mvm)
{
 struct ieee80211_vif *csa_vif;

 rcu_read_lock();

 csa_vif = rcu_dereference(mvm->csa_vif);
 if (!csa_vif || !csa_vif->csa_active)
  goto out_unlock;

 IWL_DEBUG_TE(mvm, "CSA NOA started\n");







 if (!ieee80211_csa_is_complete(csa_vif)) {
  IWL_WARN(mvm, "CSA NOA started too early\n");
  goto out_unlock;
 }

 ieee80211_csa_finish(csa_vif);

 rcu_read_unlock();

 RCU_INIT_POINTER(mvm->csa_vif, ((void*)0));

 return;

out_unlock:
 rcu_read_unlock();
}
