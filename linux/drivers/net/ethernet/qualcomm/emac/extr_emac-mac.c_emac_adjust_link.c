
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct emac_adapter {int dummy; } ;


 int emac_mac_start (struct emac_adapter*) ;
 int emac_mac_stop (struct emac_adapter*) ;
 int emac_sgmii_link_change (struct emac_adapter*,int) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void emac_adjust_link(struct net_device *netdev)
{
 struct emac_adapter *adpt = netdev_priv(netdev);
 struct phy_device *phydev = netdev->phydev;

 if (phydev->link) {
  emac_mac_start(adpt);
  emac_sgmii_link_change(adpt, 1);
 } else {
  emac_sgmii_link_change(adpt, 0);
  emac_mac_stop(adpt);
 }

 phy_print_status(phydev);
}
