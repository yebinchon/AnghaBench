
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int dummy; } ;


 int igbvf_reinit_locked (struct igbvf_adapter*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int igbvf_nway_reset(struct net_device *netdev)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (netif_running(netdev))
  igbvf_reinit_locked(adapter);
 return 0;
}
