
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_mac_ops {int (* tx_disable ) (struct xgene_enet_pdata*) ;int (* rx_disable ) (struct xgene_enet_pdata*) ;int (* tx_enable ) (struct xgene_enet_pdata*) ;int (* rx_enable ) (struct xgene_enet_pdata*) ;int (* set_speed ) (struct xgene_enet_pdata*) ;} ;
struct xgene_enet_pdata {scalar_t__ phy_speed; struct xgene_mac_ops* mac_ops; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;


 scalar_t__ SPEED_UNKNOWN ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int stub1 (struct xgene_enet_pdata*) ;
 int stub2 (struct xgene_enet_pdata*) ;
 int stub3 (struct xgene_enet_pdata*) ;
 int stub4 (struct xgene_enet_pdata*) ;
 int stub5 (struct xgene_enet_pdata*) ;
 int xgene_enet_flowctrl_cfg (struct net_device*) ;

__attribute__((used)) static void xgene_enet_adjust_link(struct net_device *ndev)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 const struct xgene_mac_ops *mac_ops = pdata->mac_ops;
 struct phy_device *phydev = ndev->phydev;

 if (phydev->link) {
  if (pdata->phy_speed != phydev->speed) {
   pdata->phy_speed = phydev->speed;
   mac_ops->set_speed(pdata);
   mac_ops->rx_enable(pdata);
   mac_ops->tx_enable(pdata);
   phy_print_status(phydev);
  }

  xgene_enet_flowctrl_cfg(ndev);
 } else {
  mac_ops->rx_disable(pdata);
  mac_ops->tx_disable(pdata);
  pdata->phy_speed = SPEED_UNKNOWN;
  phy_print_status(phydev);
 }
}
