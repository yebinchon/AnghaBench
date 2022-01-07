
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igc_adapter {int dummy; } ;


 int igc_reinit_locked (struct igc_adapter*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int igc_nway_reset(struct net_device *netdev)
{
 struct igc_adapter *adapter = netdev_priv(netdev);

 if (netif_running(netdev))
  igc_reinit_locked(adapter);
 return 0;
}
