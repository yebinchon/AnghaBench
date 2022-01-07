
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*,int ) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;

__attribute__((used)) static int qlcnic_set_real_num_queues(struct qlcnic_adapter *adapter,
          u8 tx_queues, u8 rx_queues)
{
 struct net_device *netdev = adapter->netdev;
 int err = 0;

 if (tx_queues) {
  err = netif_set_real_num_tx_queues(netdev, tx_queues);
  if (err) {
   netdev_err(netdev, "failed to set %d Tx queues\n",
       tx_queues);
   return err;
  }
 }

 if (rx_queues) {
  err = netif_set_real_num_rx_queues(netdev, rx_queues);
  if (err)
   netdev_err(netdev, "failed to set %d Rx queues\n",
       rx_queues);
 }

 return err;
}
