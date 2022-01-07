
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct nb8800_priv {int * tx_descs; int tx_desc_dma; int * rx_descs; int rx_desc_dma; TYPE_2__* tx_bufs; TYPE_2__* rx_bufs; } ;
struct TYPE_4__ {int skb; scalar_t__ page; } ;


 unsigned int RX_DESC_COUNT ;
 int RX_DESC_SIZE ;
 unsigned int TX_DESC_COUNT ;
 int TX_DESC_SIZE ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int kfree (TYPE_2__*) ;
 int kfree_skb (int ) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int put_page (scalar_t__) ;

__attribute__((used)) static void nb8800_dma_free(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 unsigned int i;

 if (priv->rx_bufs) {
  for (i = 0; i < RX_DESC_COUNT; i++)
   if (priv->rx_bufs[i].page)
    put_page(priv->rx_bufs[i].page);

  kfree(priv->rx_bufs);
  priv->rx_bufs = ((void*)0);
 }

 if (priv->tx_bufs) {
  for (i = 0; i < TX_DESC_COUNT; i++)
   kfree_skb(priv->tx_bufs[i].skb);

  kfree(priv->tx_bufs);
  priv->tx_bufs = ((void*)0);
 }

 if (priv->rx_descs) {
  dma_free_coherent(dev->dev.parent, RX_DESC_SIZE, priv->rx_descs,
      priv->rx_desc_dma);
  priv->rx_descs = ((void*)0);
 }

 if (priv->tx_descs) {
  dma_free_coherent(dev->dev.parent, TX_DESC_SIZE, priv->tx_descs,
      priv->tx_desc_dma);
  priv->tx_descs = ((void*)0);
 }
}
