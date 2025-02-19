
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct nb8800_tx_desc {int dummy; } ;
struct nb8800_priv {scalar_t__ tx_desc_dma; TYPE_2__* tx_bufs; void* tx_descs; void* rx_bufs; void* rx_descs; scalar_t__ rx_desc_dma; } ;
struct TYPE_4__ {scalar_t__ dma_desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int RX_DESC_COUNT ;
 int RX_DESC_SIZE ;
 unsigned int TX_DESC_COUNT ;
 int TX_DESC_SIZE ;
 void* dma_alloc_coherent (int ,int ,scalar_t__*,int ) ;
 void* kcalloc (unsigned int,int,int ) ;
 int nb8800_alloc_rx (struct net_device*,unsigned int,int) ;
 int nb8800_dma_free (struct net_device*) ;
 int nb8800_dma_reset (struct net_device*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nb8800_dma_init(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 unsigned int n_rx = RX_DESC_COUNT;
 unsigned int n_tx = TX_DESC_COUNT;
 unsigned int i;
 int err;

 priv->rx_descs = dma_alloc_coherent(dev->dev.parent, RX_DESC_SIZE,
         &priv->rx_desc_dma, GFP_KERNEL);
 if (!priv->rx_descs)
  goto err_out;

 priv->rx_bufs = kcalloc(n_rx, sizeof(*priv->rx_bufs), GFP_KERNEL);
 if (!priv->rx_bufs)
  goto err_out;

 for (i = 0; i < n_rx; i++) {
  err = nb8800_alloc_rx(dev, i, 0);
  if (err)
   goto err_out;
 }

 priv->tx_descs = dma_alloc_coherent(dev->dev.parent, TX_DESC_SIZE,
         &priv->tx_desc_dma, GFP_KERNEL);
 if (!priv->tx_descs)
  goto err_out;

 priv->tx_bufs = kcalloc(n_tx, sizeof(*priv->tx_bufs), GFP_KERNEL);
 if (!priv->tx_bufs)
  goto err_out;

 for (i = 0; i < n_tx; i++)
  priv->tx_bufs[i].dma_desc =
   priv->tx_desc_dma + i * sizeof(struct nb8800_tx_desc);

 nb8800_dma_reset(dev);

 return 0;

err_out:
 nb8800_dma_free(dev);

 return -ENOMEM;
}
