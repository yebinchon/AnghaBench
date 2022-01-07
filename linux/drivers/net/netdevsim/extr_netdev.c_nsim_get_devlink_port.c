
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdevsim {TYPE_1__* nsim_dev_port; } ;
struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;
struct TYPE_2__ {struct devlink_port devlink_port; } ;


 struct netdevsim* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct devlink_port *nsim_get_devlink_port(struct net_device *dev)
{
 struct netdevsim *ns = netdev_priv(dev);

 return &ns->nsim_dev_port->devlink_port;
}
