
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*,int) ;
 int netif_set_real_num_rx_queues (struct net_device*,int) ;
 int netif_set_real_num_tx_queues (struct net_device*,int) ;

int nicvf_set_real_num_queues(struct net_device *netdev,
         int tx_queues, int rx_queues)
{
 int err = 0;

 err = netif_set_real_num_tx_queues(netdev, tx_queues);
 if (err) {
  netdev_err(netdev,
      "Failed to set no of Tx queues: %d\n", tx_queues);
  return err;
 }

 err = netif_set_real_num_rx_queues(netdev, rx_queues);
 if (err)
  netdev_err(netdev,
      "Failed to set no of Rx queues: %d\n", rx_queues);
 return err;
}
