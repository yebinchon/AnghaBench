
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct TYPE_6__ {int ndesc; TYPE_3__* desc; scalar_t__ done_idx; scalar_t__ proc_idx; } ;
struct TYPE_5__ {int ndesc; TYPE_3__* desc; scalar_t__ done_idx; scalar_t__ proc_idx; } ;
struct ave_private {TYPE_2__ rx; TYPE_1__ tx; int napi_rx; int napi_tx; int irq; } ;
struct TYPE_7__ {int * skbs; } ;


 int AVE_DESC_STOP ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ave_desc_switch (struct net_device*,int ) ;
 int ave_dma_unmap (struct net_device*,TYPE_3__*,int ) ;
 int ave_irq_disable_all (struct net_device*) ;
 int dev_kfree_skb_any (int *) ;
 int disable_irq (int ) ;
 int free_irq (int ,struct net_device*) ;
 int kfree (TYPE_3__*) ;
 int napi_disable (int *) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static int ave_stop(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);
 int entry;

 ave_irq_disable_all(ndev);
 disable_irq(priv->irq);
 free_irq(priv->irq, ndev);

 netif_tx_disable(ndev);
 phy_stop(ndev->phydev);
 napi_disable(&priv->napi_tx);
 napi_disable(&priv->napi_rx);

 ave_desc_switch(ndev, AVE_DESC_STOP);


 for (entry = 0; entry < priv->tx.ndesc; entry++) {
  if (!priv->tx.desc[entry].skbs)
   continue;

  ave_dma_unmap(ndev, &priv->tx.desc[entry], DMA_TO_DEVICE);
  dev_kfree_skb_any(priv->tx.desc[entry].skbs);
  priv->tx.desc[entry].skbs = ((void*)0);
 }
 priv->tx.proc_idx = 0;
 priv->tx.done_idx = 0;


 for (entry = 0; entry < priv->rx.ndesc; entry++) {
  if (!priv->rx.desc[entry].skbs)
   continue;

  ave_dma_unmap(ndev, &priv->rx.desc[entry], DMA_FROM_DEVICE);
  dev_kfree_skb_any(priv->rx.desc[entry].skbs);
  priv->rx.desc[entry].skbs = ((void*)0);
 }
 priv->rx.proc_idx = 0;
 priv->rx.done_idx = 0;

 kfree(priv->tx.desc);
 kfree(priv->rx.desc);

 return 0;
}
