
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct macvlan_dev {TYPE_1__* lowerdev; } ;
struct TYPE_2__ {int ifindex; } ;


 struct macvlan_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int macvlan_dev_get_iflink(const struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 return vlan->lowerdev->ifindex;
}
