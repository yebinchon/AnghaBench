
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int napi; } ;
struct net_device {int phydev; } ;


 int napi_disable (int *) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (int ) ;
 int xge_delete_desc_rings (struct net_device*) ;
 int xge_free_irq (struct net_device*) ;
 int xge_intr_disable (struct xge_pdata*) ;
 int xge_mac_disable (struct xge_pdata*) ;

__attribute__((used)) static int xge_close(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);

 netif_stop_queue(ndev);
 xge_mac_disable(pdata);
 phy_stop(ndev->phydev);

 xge_intr_disable(pdata);
 xge_free_irq(ndev);
 napi_disable(&pdata->napi);
 xge_delete_desc_rings(ndev);

 return 0;
}
