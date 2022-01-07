
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nsim_bus_dev {int num_vfs; TYPE_1__* vfconfigs; } ;
struct netdevsim {struct nsim_bus_dev* nsim_bus_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int vf_mac; } ;


 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 int memcpy (int ,int *,int ) ;
 struct netdevsim* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nsim_set_vf_mac(struct net_device *dev, int vf, u8 *mac)
{
 struct netdevsim *ns = netdev_priv(dev);
 struct nsim_bus_dev *nsim_bus_dev = ns->nsim_bus_dev;


 if (vf >= nsim_bus_dev->num_vfs || is_multicast_ether_addr(mac))
  return -EINVAL;
 memcpy(nsim_bus_dev->vfconfigs[vf].vf_mac, mac, ETH_ALEN);

 return 0;
}
