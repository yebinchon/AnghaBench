
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct net_device {int rx_handler_data; } ;


 scalar_t__ netif_is_team_port (struct net_device const*) ;
 struct team_port* rtnl_dereference (int ) ;

__attribute__((used)) static struct team_port *team_port_get_rtnl(const struct net_device *dev)
{
 struct team_port *port = rtnl_dereference(dev->rx_handler_data);

 return netif_is_team_port(dev) ? port : ((void*)0);
}
