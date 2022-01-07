
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct netdata_local {int duplex; scalar_t__ speed; scalar_t__ link; TYPE_1__* pdev; int mii_bus; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 int lpc_handle_link_change ;
 scalar_t__ lpc_phy_interface_mode (int *) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int *,scalar_t__) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phydev_name (struct phy_device*) ;

__attribute__((used)) static int lpc_mii_probe(struct net_device *ndev)
{
 struct netdata_local *pldat = netdev_priv(ndev);
 struct phy_device *phydev = phy_find_first(pldat->mii_bus);

 if (!phydev) {
  netdev_err(ndev, "no PHY found\n");
  return -ENODEV;
 }


 if (lpc_phy_interface_mode(&pldat->pdev->dev) == PHY_INTERFACE_MODE_MII)
  netdev_info(ndev, "using MII interface\n");
 else
  netdev_info(ndev, "using RMII interface\n");
 phydev = phy_connect(ndev, phydev_name(phydev),
        &lpc_handle_link_change,
        lpc_phy_interface_mode(&pldat->pdev->dev));

 if (IS_ERR(phydev)) {
  netdev_err(ndev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }

 phy_set_max_speed(phydev, SPEED_100);

 pldat->link = 0;
 pldat->speed = 0;
 pldat->duplex = -1;

 phy_attached_info(phydev);

 return 0;
}
