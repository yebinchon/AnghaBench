
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int attached_dev; int duplex; int speed; scalar_t__ link; } ;


 int netdev_info (int ,char*,...) ;
 int phy_duplex_to_str (int ) ;
 int phy_pause_str (struct phy_device*) ;
 int phy_speed_to_str (int ) ;

void phy_print_status(struct phy_device *phydev)
{
 if (phydev->link) {
  netdev_info(phydev->attached_dev,
   "Link is Up - %s/%s - flow control %s\n",
   phy_speed_to_str(phydev->speed),
   phy_duplex_to_str(phydev->duplex),
   phy_pause_str(phydev));
 } else {
  netdev_info(phydev->attached_dev, "Link is Down\n");
 }
}
