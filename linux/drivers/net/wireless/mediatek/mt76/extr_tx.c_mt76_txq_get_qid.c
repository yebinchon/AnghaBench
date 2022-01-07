
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_txq {int ac; int sta; } ;


 int MT_TXQ_BE ;

__attribute__((used)) static int
mt76_txq_get_qid(struct ieee80211_txq *txq)
{
 if (!txq->sta)
  return MT_TXQ_BE;

 return txq->ac;
}
