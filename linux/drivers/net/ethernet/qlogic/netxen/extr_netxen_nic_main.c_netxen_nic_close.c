
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 int __netxen_nic_down (struct netxen_adapter*,struct net_device*) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netxen_nic_close(struct net_device *netdev)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);

 __netxen_nic_down(adapter, netdev);
 return 0;
}
