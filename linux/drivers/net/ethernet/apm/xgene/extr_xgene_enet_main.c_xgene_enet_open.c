
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_mac_ops {int (* rx_enable ) (struct xgene_enet_pdata*) ;int (* tx_enable ) (struct xgene_enet_pdata*) ;} ;
struct xgene_enet_pdata {int link_work; int rxq_cnt; int txq_cnt; struct xgene_mac_ops* mac_ops; } ;
struct net_device {scalar_t__ phydev; } ;


 int PHY_POLL_LINK_OFF ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int phy_start (scalar_t__) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (struct xgene_enet_pdata*) ;
 int stub2 (struct xgene_enet_pdata*) ;
 int xgene_enet_napi_enable (struct xgene_enet_pdata*) ;
 int xgene_enet_register_irq (struct net_device*) ;

__attribute__((used)) static int xgene_enet_open(struct net_device *ndev)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 const struct xgene_mac_ops *mac_ops = pdata->mac_ops;
 int ret;

 ret = netif_set_real_num_tx_queues(ndev, pdata->txq_cnt);
 if (ret)
  return ret;

 ret = netif_set_real_num_rx_queues(ndev, pdata->rxq_cnt);
 if (ret)
  return ret;

 xgene_enet_napi_enable(pdata);
 ret = xgene_enet_register_irq(ndev);
 if (ret)
  return ret;

 if (ndev->phydev) {
  phy_start(ndev->phydev);
 } else {
  schedule_delayed_work(&pdata->link_work, PHY_POLL_LINK_OFF);
  netif_carrier_off(ndev);
 }

 mac_ops->tx_enable(pdata);
 mac_ops->rx_enable(pdata);
 netif_tx_start_all_queues(ndev);

 return ret;
}
