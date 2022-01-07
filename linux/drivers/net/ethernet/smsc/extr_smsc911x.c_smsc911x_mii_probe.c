
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phy_interface; } ;
struct smsc911x_data {int last_duplex; int last_carrier; TYPE_2__ config; int mii_bus; } ;
struct TYPE_3__ {int addr; } ;
struct phy_device {int phy_id; TYPE_1__ mdio; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,...) ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int SPEED_100 ;
 int hw ;
 int netdev_err (struct net_device*,char*) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 int phy_connect_direct (struct net_device*,struct phy_device*,int *,int ) ;
 int phy_disconnect (struct phy_device*) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int probe ;
 int smsc911x_phy_adjust_link ;
 scalar_t__ smsc911x_phy_loopbacktest (struct net_device*) ;

__attribute__((used)) static int smsc911x_mii_probe(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 struct phy_device *phydev = ((void*)0);
 int ret;


 phydev = phy_find_first(pdata->mii_bus);
 if (!phydev) {
  netdev_err(dev, "no PHY found\n");
  return -ENODEV;
 }

 SMSC_TRACE(pdata, probe, "PHY: addr %d, phy_id 0x%08X",
     phydev->mdio.addr, phydev->phy_id);

 ret = phy_connect_direct(dev, phydev, &smsc911x_phy_adjust_link,
     pdata->config.phy_interface);

 if (ret) {
  netdev_err(dev, "Could not attach to PHY\n");
  return ret;
 }

 phy_attached_info(phydev);

 phy_set_max_speed(phydev, SPEED_100);


 phy_support_asym_pause(phydev);

 pdata->last_duplex = -1;
 pdata->last_carrier = -1;
 SMSC_TRACE(pdata, hw, "phy initialised successfully");
 return 0;
}
