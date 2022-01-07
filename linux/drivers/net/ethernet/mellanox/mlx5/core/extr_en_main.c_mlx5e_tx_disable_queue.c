
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;


 int __netif_tx_lock_bh (struct netdev_queue*) ;
 int __netif_tx_unlock_bh (struct netdev_queue*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;

void mlx5e_tx_disable_queue(struct netdev_queue *txq)
{
 __netif_tx_lock_bh(txq);
 netif_tx_stop_queue(txq);
 __netif_tx_unlock_bh(txq);
}
