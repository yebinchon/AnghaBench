
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmxnet3_adapter {int num_rx_queues; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int EOPNOTSUPP ;

 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
vmxnet3_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *info,
    u32 *rules)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 switch (info->cmd) {
 case 128:
  info->data = adapter->num_rx_queues;
  return 0;
 }
 return -EOPNOTSUPP;
}
