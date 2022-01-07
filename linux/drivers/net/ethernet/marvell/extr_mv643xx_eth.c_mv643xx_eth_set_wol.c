
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ethtool_wolinfo {int dummy; } ;


 int EOPNOTSUPP ;
 int netdev_info (struct net_device*,char*) ;
 int phy_ethtool_set_wol (int ,struct ethtool_wolinfo*) ;

__attribute__((used)) static int
mv643xx_eth_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 int err;

 if (!dev->phydev)
  return -EOPNOTSUPP;

 err = phy_ethtool_set_wol(dev->phydev, wol);



 if (err == -EOPNOTSUPP)
  netdev_info(dev, "The PHY does not support set_wol, was CONFIG_MARVELL_PHY enabled?\n");
 return err;
}
