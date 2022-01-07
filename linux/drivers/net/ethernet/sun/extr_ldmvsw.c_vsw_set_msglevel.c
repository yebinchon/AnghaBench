
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

__attribute__((used)) static void vsw_set_msglevel(struct net_device *dev, u32 value)
{
 struct vnet_port *port = netdev_priv(dev);

 port->vp->msg_enable = value;
}
