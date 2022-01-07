
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct lan743x_adapter {int dummy; } ;


 int lan743x_mac_set_mtu (struct lan743x_adapter*,int) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int lan743x_netdev_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);
 int ret = 0;

 ret = lan743x_mac_set_mtu(adapter, new_mtu);
 if (!ret)
  netdev->mtu = new_mtu;
 return ret;
}
