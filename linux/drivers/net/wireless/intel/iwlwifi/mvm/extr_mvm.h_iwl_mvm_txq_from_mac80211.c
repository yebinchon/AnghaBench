
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void iwl_mvm_txq ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline struct iwl_mvm_txq *
iwl_mvm_txq_from_mac80211(struct ieee80211_txq *txq)
{
 return (void *)txq->drv_priv;
}
