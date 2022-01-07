
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int get_link_status; } ;
struct e1000_adapter {TYPE_1__ hw; } ;


 int e1000_has_link (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static u32 e1000_get_link(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);







 if (!netif_carrier_ok(netdev))
  adapter->hw.get_link_status = 1;

 return e1000_has_link(adapter);
}
