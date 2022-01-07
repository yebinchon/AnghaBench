
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ena_adapter {int num_queues; } ;


 int ena_up (struct ena_adapter*) ;
 int ifup ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ena_adapter*,int ,struct net_device*,char*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;

__attribute__((used)) static int ena_open(struct net_device *netdev)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 int rc;


 rc = netif_set_real_num_tx_queues(netdev, adapter->num_queues);
 if (rc) {
  netif_err(adapter, ifup, netdev, "Can't set num tx queues\n");
  return rc;
 }

 rc = netif_set_real_num_rx_queues(netdev, adapter->num_queues);
 if (rc) {
  netif_err(adapter, ifup, netdev, "Can't set num rx queues\n");
  return rc;
 }

 rc = ena_up(adapter);
 if (rc)
  return rc;

 return rc;
}
