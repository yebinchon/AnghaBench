
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int attached_dev; } ;
struct net_device {int dev; } ;
struct au1000_private {int mac_id; int phy_addr; int old_duplex; scalar_t__ old_speed; scalar_t__ old_link; int mii_bus; scalar_t__ phy1_search_mac0; int phy_search_highest_addr; scalar_t__ phy_static_config; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_MAX_ADDR ;
 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 int au1000_adjust_link ;
 int dev_info (int *,char*) ;
 void* mdiobus_get_phy (int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int *,int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;

__attribute__((used)) static int au1000_mii_probe(struct net_device *dev)
{
 struct au1000_private *const aup = netdev_priv(dev);
 struct phy_device *phydev = ((void*)0);
 int phy_addr;

 if (aup->phy_static_config) {
  BUG_ON(aup->mac_id < 0 || aup->mac_id > 1);

  if (aup->phy_addr)
   phydev = mdiobus_get_phy(aup->mii_bus, aup->phy_addr);
  else
   netdev_info(dev, "using PHY-less setup\n");
  return 0;
 }




 for (phy_addr = 0; phy_addr < PHY_MAX_ADDR; phy_addr++)
  if (mdiobus_get_phy(aup->mii_bus, phy_addr)) {
   phydev = mdiobus_get_phy(aup->mii_bus, phy_addr);
   if (!aup->phy_search_highest_addr)

    break;
  }

 if (aup->phy1_search_mac0) {

  if (!phydev && (aup->mac_id == 1)) {

   dev_info(&dev->dev, ": no PHY found on MAC1, "
    "let's see if it's attached to MAC0...\n");




   for (phy_addr = 0; phy_addr < PHY_MAX_ADDR; phy_addr++) {
    struct phy_device *const tmp_phydev =
     mdiobus_get_phy(aup->mii_bus,
       phy_addr);

    if (aup->mac_id == 1)
     break;


    if (!tmp_phydev)
     continue;


    if (tmp_phydev->attached_dev)
     continue;

    phydev = tmp_phydev;
    break;
   }
  }
 }

 if (!phydev) {
  netdev_err(dev, "no PHY found\n");
  return -1;
 }


 BUG_ON(phydev->attached_dev);

 phydev = phy_connect(dev, phydev_name(phydev),
        &au1000_adjust_link, PHY_INTERFACE_MODE_MII);

 if (IS_ERR(phydev)) {
  netdev_err(dev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }

 phy_set_max_speed(phydev, SPEED_100);

 aup->old_link = 0;
 aup->old_speed = 0;
 aup->old_duplex = -1;

 phy_attached_info(phydev);

 return 0;
}
