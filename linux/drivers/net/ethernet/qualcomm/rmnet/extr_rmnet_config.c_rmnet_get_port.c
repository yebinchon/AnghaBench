
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmnet_port {int dummy; } ;
struct net_device {int rx_handler_data; } ;


 struct rmnet_port* rcu_dereference_rtnl (int ) ;
 scalar_t__ rmnet_is_real_dev_registered (struct net_device*) ;

struct rmnet_port *rmnet_get_port(struct net_device *real_dev)
{
 if (rmnet_is_real_dev_registered(real_dev))
  return rcu_dereference_rtnl(real_dev->rx_handler_data);
 else
  return ((void*)0);
}
