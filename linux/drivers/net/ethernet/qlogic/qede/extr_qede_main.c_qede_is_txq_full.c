
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_tx_queue {int ndev_txq_id; } ;
struct qede_dev {int ndev; } ;
struct netdev_queue {int dummy; } ;


 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 scalar_t__ netif_xmit_stopped (struct netdev_queue*) ;

__attribute__((used)) static bool qede_is_txq_full(struct qede_dev *edev, struct qede_tx_queue *txq)
{
 struct netdev_queue *netdev_txq;

 netdev_txq = netdev_get_tx_queue(edev->ndev, txq->ndev_txq_id);
 if (netif_xmit_stopped(netdev_txq))
  return 1;

 return 0;
}
