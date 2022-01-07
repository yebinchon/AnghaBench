
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler_data; } ;
struct ipvl_port {int dummy; } ;


 struct ipvl_port* rcu_dereference_bh (int ) ;

__attribute__((used)) static inline struct ipvl_port *ipvlan_port_get_rcu_bh(const struct net_device *d)
{
 return rcu_dereference_bh(d->rx_handler_data);
}
