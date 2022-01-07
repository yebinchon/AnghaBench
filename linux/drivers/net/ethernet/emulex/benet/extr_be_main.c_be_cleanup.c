
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {struct net_device* netdev; } ;


 int be_clear (struct be_adapter*) ;
 int be_close (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void be_cleanup(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 rtnl_lock();
 netif_device_detach(netdev);
 if (netif_running(netdev))
  be_close(netdev);
 rtnl_unlock();

 be_clear(adapter);
}
