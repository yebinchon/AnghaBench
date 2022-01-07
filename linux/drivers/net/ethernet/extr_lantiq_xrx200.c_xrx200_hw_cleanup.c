
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * skb; int dma; } ;
struct TYPE_3__ {int dma; } ;
struct xrx200_priv {TYPE_2__ chan_rx; TYPE_1__ chan_tx; } ;


 int LTQ_DESC_NUM ;
 int dev_kfree_skb_any (int ) ;
 int ltq_dma_free (int *) ;

__attribute__((used)) static void xrx200_hw_cleanup(struct xrx200_priv *priv)
{
 int i;

 ltq_dma_free(&priv->chan_tx.dma);
 ltq_dma_free(&priv->chan_rx.dma);


 for (i = 0; i < LTQ_DESC_NUM; i++)
  dev_kfree_skb_any(priv->chan_rx.skb[i]);
}
