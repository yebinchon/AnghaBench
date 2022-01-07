
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int irq; TYPE_1__* drv; } ;
struct net_device {int dummy; } ;
struct ax_device {int mii_bus; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int PHY_INTERFACE_MODE_MII ;
 int SPEED_100 ;
 int ax_handle_link_change ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,int ,int ,int ) ;
 int phy_connect_direct (struct net_device*,struct phy_device*,int ,int ) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_mii_probe(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);
 struct phy_device *phy_dev = ((void*)0);
 int ret;


 phy_dev = phy_find_first(ax->mii_bus);
 if (!phy_dev) {
  netdev_err(dev, "no PHY found\n");
  return -ENODEV;
 }

 ret = phy_connect_direct(dev, phy_dev, ax_handle_link_change,
     PHY_INTERFACE_MODE_MII);
 if (ret) {
  netdev_err(dev, "Could not attach to PHY\n");
  return ret;
 }

 phy_set_max_speed(phy_dev, SPEED_100);

 netdev_info(dev, "PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\n",
      phy_dev->drv->name, phydev_name(phy_dev), phy_dev->irq);

 return 0;
}
