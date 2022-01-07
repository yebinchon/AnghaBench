
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct meth_private {int tx_skb_dmas; int tx_skbs; int tx_ring_dma; scalar_t__ tx_write; scalar_t__ tx_read; scalar_t__ tx_count; int tx_ring; TYPE_2__* pdev; } ;
struct TYPE_4__ {int tx_ring_base; } ;
struct TYPE_6__ {TYPE_1__ eth; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int TX_RING_BUFFER_SIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 TYPE_3__* mace ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int meth_init_tx_ring(struct meth_private *priv)
{

 priv->tx_ring = dma_alloc_coherent(&priv->pdev->dev,
   TX_RING_BUFFER_SIZE, &priv->tx_ring_dma, GFP_ATOMIC);
 if (!priv->tx_ring)
  return -ENOMEM;

 priv->tx_count = priv->tx_read = priv->tx_write = 0;
 mace->eth.tx_ring_base = priv->tx_ring_dma;

 memset(priv->tx_skbs, 0, sizeof(priv->tx_skbs));
 memset(priv->tx_skb_dmas, 0, sizeof(priv->tx_skb_dmas));
 return 0;
}
