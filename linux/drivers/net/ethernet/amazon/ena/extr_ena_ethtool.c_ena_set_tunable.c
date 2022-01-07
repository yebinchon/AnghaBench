
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;
struct ena_adapter {int rx_copybreak; TYPE_1__* netdev; } ;
struct TYPE_2__ {int mtu; } ;


 int EINVAL ;

 struct ena_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ena_set_tunable(struct net_device *netdev,
      const struct ethtool_tunable *tuna,
      const void *data)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 int ret = 0;
 u32 len;

 switch (tuna->id) {
 case 128:
  len = *(u32 *)data;
  if (len > adapter->netdev->mtu) {
   ret = -EINVAL;
   break;
  }
  adapter->rx_copybreak = len;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
