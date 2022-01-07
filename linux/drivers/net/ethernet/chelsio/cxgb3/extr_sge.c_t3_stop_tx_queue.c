
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int stops; } ;
struct sge_qset {int txq_stopped; } ;
struct netdev_queue {int dummy; } ;


 int TXQ_ETH ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void t3_stop_tx_queue(struct netdev_queue *txq,
        struct sge_qset *qs, struct sge_txq *q)
{
 netif_tx_stop_queue(txq);
 set_bit(TXQ_ETH, &qs->txq_stopped);
 q->stops++;
}
