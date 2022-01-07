
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int (* set_multi ) (struct net_device*) ;} ;
struct net_device {int dummy; } ;


 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void netxen_set_multicast_list(struct net_device *dev)
{
 struct netxen_adapter *adapter = netdev_priv(dev);

 adapter->set_multi(dev);
}
