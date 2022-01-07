
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; scalar_t__ speed; int duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct ax_device {scalar_t__ speed; int duplex; scalar_t__ link; } ;


 int phy_print_status (struct phy_device*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static void ax_handle_link_change(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);
 struct phy_device *phy_dev = dev->phydev;
 int status_change = 0;

 if (phy_dev->link && ((ax->speed != phy_dev->speed) ||
        (ax->duplex != phy_dev->duplex))) {

  ax->speed = phy_dev->speed;
  ax->duplex = phy_dev->duplex;
  status_change = 1;
 }

 if (phy_dev->link != ax->link) {
  if (!phy_dev->link) {
   ax->speed = 0;
   ax->duplex = -1;
  }
  ax->link = phy_dev->link;

  status_change = 1;
 }

 if (status_change)
  phy_print_status(phy_dev);
}
