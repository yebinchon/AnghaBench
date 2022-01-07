
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 int __qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int qlcnic_close(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 __qlcnic_down(adapter, netdev);

 return 0;
}
