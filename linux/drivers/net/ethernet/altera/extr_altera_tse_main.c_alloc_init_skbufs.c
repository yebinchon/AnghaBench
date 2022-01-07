
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tse_buffer {int dummy; } ;
struct altera_tse_private {unsigned int rx_ring_size; unsigned int tx_ring_size; int * rx_ring; int * tx_ring; scalar_t__ rx_prod; scalar_t__ rx_cons; int rx_dma_buf_sz; scalar_t__ tx_prod; scalar_t__ tx_cons; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int tse_free_rx_buffer (struct altera_tse_private*,int *) ;
 int tse_init_rx_buffer (struct altera_tse_private*,int *,int ) ;

__attribute__((used)) static int alloc_init_skbufs(struct altera_tse_private *priv)
{
 unsigned int rx_descs = priv->rx_ring_size;
 unsigned int tx_descs = priv->tx_ring_size;
 int ret = -ENOMEM;
 int i;


 priv->rx_ring = kcalloc(rx_descs, sizeof(struct tse_buffer),
    GFP_KERNEL);
 if (!priv->rx_ring)
  goto err_rx_ring;


 priv->tx_ring = kcalloc(tx_descs, sizeof(struct tse_buffer),
    GFP_KERNEL);
 if (!priv->tx_ring)
  goto err_tx_ring;

 priv->tx_cons = 0;
 priv->tx_prod = 0;


 for (i = 0; i < rx_descs; i++) {
  ret = tse_init_rx_buffer(priv, &priv->rx_ring[i],
      priv->rx_dma_buf_sz);
  if (ret)
   goto err_init_rx_buffers;
 }

 priv->rx_cons = 0;
 priv->rx_prod = 0;

 return 0;
err_init_rx_buffers:
 while (--i >= 0)
  tse_free_rx_buffer(priv, &priv->rx_ring[i]);
 kfree(priv->tx_ring);
err_tx_ring:
 kfree(priv->rx_ring);
err_rx_ring:
 return ret;
}
