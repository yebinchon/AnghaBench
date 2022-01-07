
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int flags; } ;


 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 lan743x_ethtool_get_priv_flags(struct net_device *netdev)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);

 return adapter->flags;
}
