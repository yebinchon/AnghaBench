
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct mii_ioctl_data {scalar_t__ phy_id; } ;
struct ifreq {int dummy; } ;
struct ethoc {int mdio; } ;


 int EINVAL ;
 int ENODEV ;
 int ERANGE ;
 scalar_t__ PHY_MAX_ADDR ;
 int SIOCGMIIPHY ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct phy_device* mdiobus_get_phy (int ,scalar_t__) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,struct ifreq*,int) ;

__attribute__((used)) static int ethoc_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct ethoc *priv = netdev_priv(dev);
 struct mii_ioctl_data *mdio = if_mii(ifr);
 struct phy_device *phy = ((void*)0);

 if (!netif_running(dev))
  return -EINVAL;

 if (cmd != SIOCGMIIPHY) {
  if (mdio->phy_id >= PHY_MAX_ADDR)
   return -ERANGE;

  phy = mdiobus_get_phy(priv->mdio, mdio->phy_id);
  if (!phy)
   return -ENODEV;
 } else {
  phy = dev->phydev;
 }

 return phy_mii_ioctl(phy, ifr, cmd);
}
