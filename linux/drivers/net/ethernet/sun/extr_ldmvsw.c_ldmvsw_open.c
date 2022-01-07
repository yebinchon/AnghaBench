
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;
struct vnet_port {struct vio_driver_state vio; } ;
struct net_device {int dummy; } ;


 int LDC_EVENT_RESET ;
 struct vnet_port* netdev_priv (struct net_device*) ;
 int vio_link_state_change (struct vio_driver_state*,int ) ;
 int vio_port_up (struct vio_driver_state*) ;
 int vnet_port_reset (struct vnet_port*) ;

int ldmvsw_open(struct net_device *dev)
{
 struct vnet_port *port = netdev_priv(dev);
 struct vio_driver_state *vio = &port->vio;


 vio_link_state_change(vio, LDC_EVENT_RESET);
 vnet_port_reset(port);
 vio_port_up(vio);

 return 0;
}
