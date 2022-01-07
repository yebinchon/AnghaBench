
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler_data; } ;
struct macvlan_port {int dummy; } ;


 struct macvlan_port* rcu_dereference (int ) ;

__attribute__((used)) static struct macvlan_port *macvlan_port_get_rcu(const struct net_device *dev)
{
 return rcu_dereference(dev->rx_handler_data);
}
