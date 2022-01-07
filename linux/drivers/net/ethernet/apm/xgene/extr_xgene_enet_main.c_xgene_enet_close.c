
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_mac_ops {int (* rx_disable ) (struct xgene_enet_pdata*) ;int (* tx_disable ) (struct xgene_enet_pdata*) ;} ;
struct xgene_enet_pdata {int rxq_cnt; int * rx_ring; int link_work; struct xgene_mac_ops* mac_ops; } ;
struct net_device {scalar_t__ phydev; } ;


 int cancel_delayed_work_sync (int *) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (scalar_t__) ;
 int stub1 (struct xgene_enet_pdata*) ;
 int stub2 (struct xgene_enet_pdata*) ;
 int xgene_enet_free_irq (struct net_device*) ;
 int xgene_enet_napi_disable (struct xgene_enet_pdata*) ;
 int xgene_enet_process_ring (int ,int) ;

__attribute__((used)) static int xgene_enet_close(struct net_device *ndev)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 const struct xgene_mac_ops *mac_ops = pdata->mac_ops;
 int i;

 netif_tx_stop_all_queues(ndev);
 mac_ops->tx_disable(pdata);
 mac_ops->rx_disable(pdata);

 if (ndev->phydev)
  phy_stop(ndev->phydev);
 else
  cancel_delayed_work_sync(&pdata->link_work);

 xgene_enet_free_irq(ndev);
 xgene_enet_napi_disable(pdata);
 for (i = 0; i < pdata->rxq_cnt; i++)
  xgene_enet_process_ring(pdata->rx_ring[i], -1);

 return 0;
}
