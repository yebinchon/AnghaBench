
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipvl_dev {TYPE_1__* phy_dev; } ;
struct TYPE_2__ {int ifindex; } ;


 struct ipvl_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int ipvlan_get_iflink(const struct net_device *dev)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);

 return ipvlan->phy_dev->ifindex;
}
