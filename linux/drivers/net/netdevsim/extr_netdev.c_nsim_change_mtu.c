
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prog; } ;
struct netdevsim {TYPE_1__ xdp; } ;
struct net_device {int mtu; } ;


 int EBUSY ;
 int NSIM_XDP_MAX_MTU ;
 struct netdevsim* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nsim_change_mtu(struct net_device *dev, int new_mtu)
{
 struct netdevsim *ns = netdev_priv(dev);

 if (ns->xdp.prog && new_mtu > NSIM_XDP_MAX_MTU)
  return -EBUSY;

 dev->mtu = new_mtu;

 return 0;
}
