
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int wol; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int WAKE_BCAST ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int device_set_wakeup_enable (int *,int) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
vmxnet3_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 if (wol->wolopts & (WAKE_PHY | WAKE_MCAST | WAKE_BCAST |
       WAKE_MAGICSECURE)) {
  return -EOPNOTSUPP;
 }

 adapter->wol = wol->wolopts;

 device_set_wakeup_enable(&adapter->pdev->dev, adapter->wol);

 return 0;
}
