
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_bus_dev {int num_vfs; TYPE_1__* vfconfigs; } ;
struct netdevsim {struct nsim_bus_dev* nsim_bus_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int link_state; } ;


 int EINVAL ;



 struct netdevsim* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nsim_set_vf_link_state(struct net_device *dev, int vf, int state)
{
 struct netdevsim *ns = netdev_priv(dev);
 struct nsim_bus_dev *nsim_bus_dev = ns->nsim_bus_dev;

 if (vf >= nsim_bus_dev->num_vfs)
  return -EINVAL;

 switch (state) {
 case 130:
 case 128:
 case 129:
  break;
 default:
  return -EINVAL;
 }

 nsim_bus_dev->vfconfigs[vf].link_state = state;

 return 0;
}
