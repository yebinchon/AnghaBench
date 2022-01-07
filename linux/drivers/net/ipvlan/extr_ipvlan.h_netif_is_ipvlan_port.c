
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler; } ;


 scalar_t__ ipvlan_handle_frame ;
 scalar_t__ rcu_access_pointer (int ) ;

__attribute__((used)) static inline bool netif_is_ipvlan_port(const struct net_device *dev)
{
 return rcu_access_pointer(dev->rx_handler) == ipvlan_handle_frame;
}
