
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int phy_speed; int phy_mode; TYPE_1__* pdev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct acpi_device {struct phy_device* driver_data; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Half_BIT ;
 int SPEED_UNKNOWN ;
 struct acpi_device* acpi_phy_find_device (struct device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (scalar_t__,char*,int) ;
 struct phy_device* of_phy_connect (struct net_device*,struct device_node*,int *,int ,int ) ;
 scalar_t__ phy_connect_direct (struct net_device*,struct phy_device*,int *,int ) ;
 int phy_remove_link_mode (struct phy_device*,int ) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int xgene_enet_adjust_link ;

int xgene_enet_phy_connect(struct net_device *ndev)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 struct device_node *np;
 struct phy_device *phy_dev;
 struct device *dev = &pdata->pdev->dev;
 int i;

 if (dev->of_node) {
  for (i = 0 ; i < 2; i++) {
   np = of_parse_phandle(dev->of_node, "phy-handle", i);
   phy_dev = of_phy_connect(ndev, np,
       &xgene_enet_adjust_link,
       0, pdata->phy_mode);
   of_node_put(np);
   if (phy_dev)
    break;
  }

  if (!phy_dev) {
   netdev_err(ndev, "Could not connect to PHY\n");
   return -ENODEV;
  }
 } else {
  return -ENODEV;

 }

 pdata->phy_speed = SPEED_UNKNOWN;
 phy_remove_link_mode(phy_dev, ETHTOOL_LINK_MODE_10baseT_Half_BIT);
 phy_remove_link_mode(phy_dev, ETHTOOL_LINK_MODE_100baseT_Half_BIT);
 phy_remove_link_mode(phy_dev, ETHTOOL_LINK_MODE_1000baseT_Half_BIT);
 phy_support_asym_pause(phy_dev);

 return 0;
}
