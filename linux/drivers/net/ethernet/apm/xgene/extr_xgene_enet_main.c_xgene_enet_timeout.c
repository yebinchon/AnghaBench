
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int txq_cnt; TYPE_1__* mac_ops; } ;
struct netdev_queue {int trans_start; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct xgene_enet_pdata*) ;} ;


 int jiffies ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int netif_tx_start_queue (struct netdev_queue*) ;
 int stub1 (struct xgene_enet_pdata*) ;

__attribute__((used)) static void xgene_enet_timeout(struct net_device *ndev)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 struct netdev_queue *txq;
 int i;

 pdata->mac_ops->reset(pdata);

 for (i = 0; i < pdata->txq_cnt; i++) {
  txq = netdev_get_tx_queue(ndev, i);
  txq->trans_start = jiffies;
  netif_tx_start_queue(txq);
 }
}
