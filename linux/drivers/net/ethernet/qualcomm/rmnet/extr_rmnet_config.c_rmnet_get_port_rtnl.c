
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmnet_port {int dummy; } ;
struct net_device {int rx_handler_data; } ;


 struct rmnet_port* rtnl_dereference (int ) ;

__attribute__((used)) static struct rmnet_port*
rmnet_get_port_rtnl(const struct net_device *real_dev)
{
 return rtnl_dereference(real_dev->rx_handler_data);
}
