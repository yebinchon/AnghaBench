
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ath10k_txq {int list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void ath10k_mac_txq_init(struct ieee80211_txq *txq)
{
 struct ath10k_txq *artxq;

 if (!txq)
  return;

 artxq = (void *)txq->drv_priv;
 INIT_LIST_HEAD(&artxq->list);
}
