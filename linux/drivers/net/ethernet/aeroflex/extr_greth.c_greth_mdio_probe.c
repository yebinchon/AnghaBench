
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; int advertising; } ;
struct net_device {int dev; } ;
struct greth_private {int duplex; scalar_t__ speed; scalar_t__ link; scalar_t__ gbit_mac; int mdio; } ;


 int ENXIO ;
 int PHY_INTERFACE_MODE_GMII ;
 int PHY_INTERFACE_MODE_MII ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int dev_err (int *,char*) ;
 int greth_link_change ;
 int linkmode_copy (int ,int ) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct greth_private*) ;
 scalar_t__ netif_msg_probe (struct greth_private*) ;
 int phy_connect_direct (struct net_device*,struct phy_device*,int *,int ) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;

__attribute__((used)) static int greth_mdio_probe(struct net_device *dev)
{
 struct greth_private *greth = netdev_priv(dev);
 struct phy_device *phy = ((void*)0);
 int ret;


 phy = phy_find_first(greth->mdio);

 if (!phy) {
  if (netif_msg_probe(greth))
   dev_err(&dev->dev, "no PHY found\n");
  return -ENXIO;
 }

 ret = phy_connect_direct(dev, phy, &greth_link_change,
     greth->gbit_mac ? PHY_INTERFACE_MODE_GMII : PHY_INTERFACE_MODE_MII);
 if (ret) {
  if (netif_msg_ifup(greth))
   dev_err(&dev->dev, "could not attach to PHY\n");
  return ret;
 }

 if (greth->gbit_mac)
  phy_set_max_speed(phy, SPEED_1000);
 else
  phy_set_max_speed(phy, SPEED_100);

 linkmode_copy(phy->advertising, phy->supported);

 greth->link = 0;
 greth->speed = 0;
 greth->duplex = -1;

 return 0;
}
