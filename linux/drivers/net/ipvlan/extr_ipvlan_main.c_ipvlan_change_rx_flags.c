
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct ipvl_dev {struct net_device* phy_dev; } ;


 int IFF_ALLMULTI ;
 int dev_set_allmulti (struct net_device*,int) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ipvlan_change_rx_flags(struct net_device *dev, int change)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct net_device *phy_dev = ipvlan->phy_dev;

 if (change & IFF_ALLMULTI)
  dev_set_allmulti(phy_dev, dev->flags & IFF_ALLMULTI? 1 : -1);
}
