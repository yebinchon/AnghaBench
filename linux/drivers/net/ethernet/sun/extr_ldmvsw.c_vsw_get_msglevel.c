
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vnet_port {TYPE_1__* vp; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int msg_enable; } ;


 struct vnet_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 vsw_get_msglevel(struct net_device *dev)
{
 struct vnet_port *port = netdev_priv(dev);

 return port->vp->msg_enable;
}
