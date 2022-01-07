
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {scalar_t__ count; scalar_t__ tx_wake_threshold; int id; } ;
struct mvneta_port {int dev; } ;


 int mvneta_txq_bufs_free (struct mvneta_port*,struct mvneta_tx_queue*,int,struct netdev_queue*) ;
 int mvneta_txq_sent_desc_proc (struct mvneta_port*,struct mvneta_tx_queue*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;

__attribute__((used)) static void mvneta_txq_done(struct mvneta_port *pp,
      struct mvneta_tx_queue *txq)
{
 struct netdev_queue *nq = netdev_get_tx_queue(pp->dev, txq->id);
 int tx_done;

 tx_done = mvneta_txq_sent_desc_proc(pp, txq);
 if (!tx_done)
  return;

 mvneta_txq_bufs_free(pp, txq, tx_done, nq);

 txq->count -= tx_done;

 if (netif_tx_queue_stopped(nq)) {
  if (txq->count <= txq->tx_wake_threshold)
   netif_tx_wake_queue(nq);
 }
}
