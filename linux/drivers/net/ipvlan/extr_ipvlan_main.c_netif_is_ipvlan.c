
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int ipvlan_netdev_ops ;

__attribute__((used)) static bool netif_is_ipvlan(const struct net_device *dev)
{

 return dev->netdev_ops == &ipvlan_netdev_ops;
}
