
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef void iwl_mvm_txq ;
struct ieee80211_sta {TYPE_1__** txq; } ;
struct TYPE_2__ {scalar_t__ drv_priv; } ;


 size_t IEEE80211_NUM_TIDS ;
 size_t IWL_MAX_TID_COUNT ;

__attribute__((used)) static inline struct iwl_mvm_txq *
iwl_mvm_txq_from_tid(struct ieee80211_sta *sta, u8 tid)
{
 if (tid == IWL_MAX_TID_COUNT)
  tid = IEEE80211_NUM_TIDS;

 return (void *)sta->txq[tid]->drv_priv;
}
