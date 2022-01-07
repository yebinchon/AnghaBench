
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ieee80211_vif {struct ieee80211_txq* txq; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {struct ieee80211_txq** txq; } ;
struct ath_node {struct ieee80211_vif* vif; struct ieee80211_sta* sta; } ;
struct ath_atx_tid {int dummy; } ;


 size_t ARRAY_SIZE (struct ieee80211_txq**) ;
 int BUG_ON (int) ;

__attribute__((used)) static inline struct ath_atx_tid *
ath_node_to_tid(struct ath_node *an, u8 tidno)
{
 struct ieee80211_sta *sta = an->sta;
 struct ieee80211_vif *vif = an->vif;
 struct ieee80211_txq *txq;

 BUG_ON(!vif);
 if (sta)
  txq = sta->txq[tidno % ARRAY_SIZE(sta->txq)];
 else
  txq = vif->txq;

 return (struct ath_atx_tid *) txq->drv_priv;
}
