
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_port {int vp; } ;
struct net_device {int dummy; } ;


 struct vnet_port* netdev_priv (struct net_device*) ;
 void sunvnet_set_rx_mode_common (struct net_device*,int ) ;

__attribute__((used)) static void vsw_set_rx_mode(struct net_device *dev)
{
 struct vnet_port *port = netdev_priv(dev);

 return sunvnet_set_rx_mode_common(dev, port->vp);
}
