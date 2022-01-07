
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int name; } ;
struct ftgmac100 {int mii_bus; struct net_device* netdev; } ;
typedef int phy_interface_t ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PTR_ERR (struct phy_device*) ;
 int ftgmac100_adjust_link ;
 int netdev_err (struct net_device*,char*,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,int ,int *,int ) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int phydev_name (struct phy_device*) ;

__attribute__((used)) static int ftgmac100_mii_probe(struct ftgmac100 *priv, phy_interface_t intf)
{
 struct net_device *netdev = priv->netdev;
 struct phy_device *phydev;

 phydev = phy_find_first(priv->mii_bus);
 if (!phydev) {
  netdev_info(netdev, "%s: no PHY found\n", netdev->name);
  return -ENODEV;
 }

 phydev = phy_connect(netdev, phydev_name(phydev),
        &ftgmac100_adjust_link, intf);

 if (IS_ERR(phydev)) {
  netdev_err(netdev, "%s: Could not attach to PHY\n", netdev->name);
  return PTR_ERR(phydev);
 }




 phy_support_asym_pause(phydev);


 phy_attached_info(phydev);

 return 0;
}
