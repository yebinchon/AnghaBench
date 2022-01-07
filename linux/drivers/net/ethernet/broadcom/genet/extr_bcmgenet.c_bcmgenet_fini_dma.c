
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netdev_queue {int dummy; } ;
struct bcmgenet_priv {int num_tx_bds; scalar_t__ tx_cbs; scalar_t__ rx_cbs; TYPE_3__* tx_rings; int dev; TYPE_2__* hw_params; TYPE_1__* pdev; } ;
struct TYPE_6__ {int queue; } ;
struct TYPE_5__ {int tx_queues; } ;
struct TYPE_4__ {int dev; } ;


 size_t DESC_INDEX ;
 int bcmgenet_fini_rx_napi (struct bcmgenet_priv*) ;
 int bcmgenet_fini_tx_napi (struct bcmgenet_priv*) ;
 int bcmgenet_free_rx_buffers (struct bcmgenet_priv*) ;
 int bcmgenet_free_tx_cb (int *,scalar_t__) ;
 int dev_kfree_skb (int ) ;
 int kfree (scalar_t__) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_reset_queue (struct netdev_queue*) ;

__attribute__((used)) static void bcmgenet_fini_dma(struct bcmgenet_priv *priv)
{
 struct netdev_queue *txq;
 int i;

 bcmgenet_fini_rx_napi(priv);
 bcmgenet_fini_tx_napi(priv);

 for (i = 0; i < priv->num_tx_bds; i++)
  dev_kfree_skb(bcmgenet_free_tx_cb(&priv->pdev->dev,
        priv->tx_cbs + i));

 for (i = 0; i < priv->hw_params->tx_queues; i++) {
  txq = netdev_get_tx_queue(priv->dev, priv->tx_rings[i].queue);
  netdev_tx_reset_queue(txq);
 }

 txq = netdev_get_tx_queue(priv->dev, priv->tx_rings[DESC_INDEX].queue);
 netdev_tx_reset_queue(txq);

 bcmgenet_free_rx_buffers(priv);
 kfree(priv->rx_cbs);
 kfree(priv->tx_cbs);
}
