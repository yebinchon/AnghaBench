
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mwifiex_adapter {int queue_lock; } ;


 int netif_tx_stop_all_queues (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_stop_net_dev_queue(struct net_device *netdev,
     struct mwifiex_adapter *adapter)
{
 spin_lock_bh(&adapter->queue_lock);
 netif_tx_stop_all_queues(netdev);
 spin_unlock_bh(&adapter->queue_lock);
}
