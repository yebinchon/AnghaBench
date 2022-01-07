
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_bus_dev {int num_vfs; TYPE_1__* vfconfigs; } ;
struct netdevsim {struct nsim_bus_dev* nsim_bus_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int trusted; } ;


 int EINVAL ;
 struct netdevsim* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nsim_set_vf_trust(struct net_device *dev, int vf, bool val)
{
 struct netdevsim *ns = netdev_priv(dev);
 struct nsim_bus_dev *nsim_bus_dev = ns->nsim_bus_dev;

 if (vf >= nsim_bus_dev->num_vfs)
  return -EINVAL;
 nsim_bus_dev->vfconfigs[vf].trusted = val;

 return 0;
}
