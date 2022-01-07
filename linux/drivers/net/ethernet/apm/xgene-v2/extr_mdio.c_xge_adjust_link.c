
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {scalar_t__ phy_speed; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;


 scalar_t__ SPEED_UNKNOWN ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int xge_mac_disable (struct xge_pdata*) ;
 int xge_mac_enable (struct xge_pdata*) ;
 int xge_mac_set_speed (struct xge_pdata*) ;

__attribute__((used)) static void xge_adjust_link(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;

 if (phydev->link) {
  if (pdata->phy_speed != phydev->speed) {
   pdata->phy_speed = phydev->speed;
   xge_mac_set_speed(pdata);
   xge_mac_enable(pdata);
   phy_print_status(phydev);
  }
 } else {
  if (pdata->phy_speed != SPEED_UNKNOWN) {
   pdata->phy_speed = SPEED_UNKNOWN;
   xge_mac_disable(pdata);
   phy_print_status(phydev);
  }
 }
}
