
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int autoneg; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {TYPE_1__* pdev; int mii_bus; } ;
struct TYPE_2__ {scalar_t__ device; int dev; } ;


 int AUTONEG_ENABLE ;
 int ENODEV ;
 scalar_t__ ET131X_PCI_DEVICE_ID_FAST ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int dev_err (int *,char*) ;
 int et131x_adjust_link ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int *,int ) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;

__attribute__((used)) static int et131x_mii_probe(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 struct phy_device *phydev = ((void*)0);

 phydev = phy_find_first(adapter->mii_bus);
 if (!phydev) {
  dev_err(&adapter->pdev->dev, "no PHY found\n");
  return -ENODEV;
 }

 phydev = phy_connect(netdev, phydev_name(phydev),
        &et131x_adjust_link, PHY_INTERFACE_MODE_MII);

 if (IS_ERR(phydev)) {
  dev_err(&adapter->pdev->dev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }

 phy_set_max_speed(phydev, SPEED_100);

 if (adapter->pdev->device != ET131X_PCI_DEVICE_ID_FAST)
  phy_set_max_speed(phydev, SPEED_1000);

 phydev->autoneg = AUTONEG_ENABLE;

 phy_attached_info(phydev);

 return 0;
}
