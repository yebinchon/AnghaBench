
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;
struct ena_adapter {int rx_copybreak; } ;


 int EINVAL ;

 struct ena_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ena_get_tunable(struct net_device *netdev,
      const struct ethtool_tunable *tuna, void *data)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 int ret = 0;

 switch (tuna->id) {
 case 128:
  *(u32 *)data = adapter->rx_copybreak;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
