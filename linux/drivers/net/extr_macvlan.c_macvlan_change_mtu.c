
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct macvlan_dev {TYPE_1__* lowerdev; } ;
struct TYPE_2__ {int mtu; } ;


 int EINVAL ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_change_mtu(struct net_device *dev, int new_mtu)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 if (vlan->lowerdev->mtu < new_mtu)
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
