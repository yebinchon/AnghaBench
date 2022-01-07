
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int size; int restarts; int in_use; } ;
struct sge_eth_txq {int txq; struct sge_txq q; } ;
struct adapter {int dummy; } ;


 int __netif_tx_trylock (int ) ;
 int __netif_tx_unlock (int ) ;
 scalar_t__ netif_tx_queue_stopped (int ) ;
 int netif_tx_wake_queue (int ) ;
 unsigned int reclaim_completed_tx (struct adapter*,struct sge_txq*,int,int) ;
 int txq_avail (struct sge_txq*) ;

int t4_sge_eth_txq_egress_update(struct adapter *adap, struct sge_eth_txq *eq,
     int maxreclaim)
{
 struct sge_txq *q = &eq->q;
 unsigned int reclaimed;

 if (!q->in_use || !__netif_tx_trylock(eq->txq))
  return 0;


 reclaimed = reclaim_completed_tx(adap, &eq->q, maxreclaim, 1);






 if (netif_tx_queue_stopped(eq->txq) && txq_avail(q) > (q->size / 2)) {
  netif_tx_wake_queue(eq->txq);
  eq->q.restarts++;
 }

 __netif_tx_unlock(eq->txq);
 return reclaimed;
}
