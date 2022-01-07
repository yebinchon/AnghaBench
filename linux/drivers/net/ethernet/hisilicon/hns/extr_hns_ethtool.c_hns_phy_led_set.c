
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;


 int HNS_LED_FC_REG ;
 int HNS_PHY_PAGE_COPPER ;
 int HNS_PHY_PAGE_LED ;
 int HNS_PHY_PAGE_REG ;
 int netdev_err (struct net_device*,char*) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int hns_phy_led_set(struct net_device *netdev, int value)
{
 int retval;
 struct phy_device *phy_dev = netdev->phydev;

 retval = phy_write(phy_dev, HNS_PHY_PAGE_REG, HNS_PHY_PAGE_LED);
 retval |= phy_write(phy_dev, HNS_LED_FC_REG, value);
 retval |= phy_write(phy_dev, HNS_PHY_PAGE_REG, HNS_PHY_PAGE_COPPER);
 if (retval) {
  netdev_err(netdev, "mdiobus_write fail !\n");
  return retval;
 }
 return 0;
}
