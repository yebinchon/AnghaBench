
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan743x_adapter {int dummy; } ;


 int lan743x_rfe_set_multicast (struct lan743x_adapter*) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void lan743x_netdev_set_multicast(struct net_device *netdev)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);

 lan743x_rfe_set_multicast(adapter);
}
