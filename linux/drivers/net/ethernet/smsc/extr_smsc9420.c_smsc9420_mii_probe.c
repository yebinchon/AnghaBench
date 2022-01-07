
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int last_duplex; int last_carrier; int mii_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {int phydev; } ;


 int BUG_ON (int ) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 struct phy_device* mdiobus_get_phy (int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int ,int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int phydev_name (struct phy_device*) ;
 int smsc9420_phy_adjust_link ;

__attribute__((used)) static int smsc9420_mii_probe(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 struct phy_device *phydev = ((void*)0);

 BUG_ON(dev->phydev);


 phydev = mdiobus_get_phy(pd->mii_bus, 1);
 if (!phydev) {
  netdev_err(dev, "no PHY found at address 1\n");
  return -ENODEV;
 }

 phydev = phy_connect(dev, phydev_name(phydev),
        smsc9420_phy_adjust_link, PHY_INTERFACE_MODE_MII);

 if (IS_ERR(phydev)) {
  netdev_err(dev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }

 phy_set_max_speed(phydev, SPEED_100);


 phy_support_asym_pause(phydev);

 phy_attached_info(phydev);

 pd->last_duplex = -1;
 pd->last_carrier = -1;

 return 0;
}
