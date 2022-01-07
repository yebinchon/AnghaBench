
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 int __qlcnic_up (struct qlcnic_adapter*,struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int qlcnic_up(struct qlcnic_adapter *adapter, struct net_device *netdev)
{
 int err = 0;

 rtnl_lock();
 if (netif_running(netdev))
  err = __qlcnic_up(adapter, netdev);
 rtnl_unlock();

 return err;
}
