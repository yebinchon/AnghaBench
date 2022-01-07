
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mc; } ;
struct cpsw_priv {int ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int usage_count; int dev; int ale; int dma; int cpts; int napi_tx; int napi_rx; } ;


 int __hw_addr_ref_unsync_dev (int *,struct net_device*,int ) ;
 int cpdma_ctlr_stop (int ) ;
 int cpsw_ale_stop (int ) ;
 int cpsw_destroy_xdp_rxqs (struct cpsw_common*) ;
 int cpsw_info (struct cpsw_priv*,int ,char*) ;
 int cpsw_intr_disable (struct cpsw_common*) ;
 scalar_t__ cpsw_need_resplit (struct cpsw_common*) ;
 int cpsw_purge_all_mc ;
 int cpsw_slave_stop ;
 int cpsw_split_res (struct cpsw_common*) ;
 int cpts_unregister (int ) ;
 int for_each_slave (struct cpsw_priv*,int ,struct cpsw_common*) ;
 int ifdown ;
 int napi_disable (int *) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (int ) ;
 int netif_tx_stop_all_queues (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int cpsw_ndo_stop(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 struct cpsw_common *cpsw = priv->cpsw;

 cpsw_info(priv, ifdown, "shutting down cpsw device\n");
 __hw_addr_ref_unsync_dev(&ndev->mc, ndev, cpsw_purge_all_mc);
 netif_tx_stop_all_queues(priv->ndev);
 netif_carrier_off(priv->ndev);

 if (cpsw->usage_count <= 1) {
  napi_disable(&cpsw->napi_rx);
  napi_disable(&cpsw->napi_tx);
  cpts_unregister(cpsw->cpts);
  cpsw_intr_disable(cpsw);
  cpdma_ctlr_stop(cpsw->dma);
  cpsw_ale_stop(cpsw->ale);
  cpsw_destroy_xdp_rxqs(cpsw);
 }
 for_each_slave(priv, cpsw_slave_stop, cpsw);

 if (cpsw_need_resplit(cpsw))
  cpsw_split_res(cpsw);

 cpsw->usage_count--;
 pm_runtime_put_sync(cpsw->dev);
 return 0;
}
