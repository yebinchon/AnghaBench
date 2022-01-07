
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1c_adapter {int dummy; } ;


 int atl1c_reinit_locked (struct atl1c_adapter*) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int atl1c_nway_reset(struct net_device *netdev)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 if (netif_running(netdev))
  atl1c_reinit_locked(adapter);
 return 0;
}
