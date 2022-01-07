
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct mvneta_tx_queue {int count; scalar_t__ txq_get_index; scalar_t__ txq_put_index; int id; } ;
struct mvneta_port {int dev; } ;


 int mvneta_txq_bufs_free (struct mvneta_port*,struct mvneta_tx_queue*,int,struct netdev_queue*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;

__attribute__((used)) static void mvneta_txq_done_force(struct mvneta_port *pp,
      struct mvneta_tx_queue *txq)

{
 struct netdev_queue *nq = netdev_get_tx_queue(pp->dev, txq->id);
 int tx_done = txq->count;

 mvneta_txq_bufs_free(pp, txq, tx_done, nq);


 txq->count = 0;
 txq->txq_put_index = 0;
 txq->txq_get_index = 0;
}
