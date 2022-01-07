
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int rx_ring_size; int tx_ring_size; scalar_t__ rx_ring_dma; scalar_t__ tx_ring_dma; scalar_t__ rx_ring; scalar_t__ tx_ring; int * tx_buffers; int * rx_buffers; int pdev; } ;
struct adm8211_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ pci_alloc_consistent (int ,unsigned int,scalar_t__*) ;

__attribute__((used)) static int adm8211_alloc_rings(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;
 unsigned int ring_size;

 priv->rx_buffers = kmalloc(sizeof(*priv->rx_buffers) * priv->rx_ring_size +
       sizeof(*priv->tx_buffers) * priv->tx_ring_size, GFP_KERNEL);
 if (!priv->rx_buffers)
  return -ENOMEM;

 priv->tx_buffers = (void *)priv->rx_buffers +
      sizeof(*priv->rx_buffers) * priv->rx_ring_size;


 ring_size = sizeof(struct adm8211_desc) * priv->rx_ring_size +
      sizeof(struct adm8211_desc) * priv->tx_ring_size;
 priv->rx_ring = pci_alloc_consistent(priv->pdev, ring_size,
          &priv->rx_ring_dma);

 if (!priv->rx_ring) {
  kfree(priv->rx_buffers);
  priv->rx_buffers = ((void*)0);
  priv->tx_buffers = ((void*)0);
  return -ENOMEM;
 }

 priv->tx_ring = priv->rx_ring + priv->rx_ring_size;
 priv->tx_ring_dma = priv->rx_ring_dma +
       sizeof(struct adm8211_desc) * priv->rx_ring_size;

 return 0;
}
