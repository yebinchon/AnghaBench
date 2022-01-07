
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
struct TYPE_6__ {TYPE_2__ rs_drv; } ;
struct iwl_mvm_sta {TYPE_3__ lq_sta; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int __iwl_mvm_rs_tx_status (struct iwl_mvm*,struct ieee80211_sta*,int,struct ieee80211_tx_info*,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

void iwl_mvm_rs_tx_status(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
     int tid, struct ieee80211_tx_info *info, bool ndp)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);




 if (!spin_trylock(&mvmsta->lq_sta.rs_drv.pers.lock))
  return;

 __iwl_mvm_rs_tx_status(mvm, sta, tid, info, ndp);
 spin_unlock(&mvmsta->lq_sta.rs_drv.pers.lock);
}
