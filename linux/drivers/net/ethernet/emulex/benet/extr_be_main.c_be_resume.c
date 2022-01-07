
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {struct net_device* netdev; } ;


 int be_open (struct net_device*) ;
 int be_setup (struct be_adapter*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int be_resume(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int status;

 status = be_setup(adapter);
 if (status)
  return status;

 rtnl_lock();
 if (netif_running(netdev))
  status = be_open(netdev);
 rtnl_unlock();

 if (status)
  return status;

 netif_device_attach(netdev);

 return 0;
}
