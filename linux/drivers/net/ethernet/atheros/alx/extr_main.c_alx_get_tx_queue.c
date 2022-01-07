
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct alx_tx_queue {int queue_idx; int netdev; } ;


 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;

__attribute__((used)) static struct netdev_queue *alx_get_tx_queue(const struct alx_tx_queue *txq)
{
 return netdev_get_tx_queue(txq->netdev, txq->queue_idx);
}
