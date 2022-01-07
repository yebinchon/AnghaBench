
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ravb_tx_desc {int dummy; } ;
struct ravb_private {int num_tx_desc; int* num_rx_ring; int* num_tx_ring; int ** tx_skb; int ** tx_align; int ** rx_skb; struct ravb_ex_rx_desc** tx_ring; int * tx_desc_dma; struct ravb_ex_rx_desc** rx_ring; int * rx_desc_dma; int rx_buf_sz; } ;
struct ravb_ex_rx_desc {int dptr; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (int ) ;
 int dma_free_coherent (int ,int,struct ravb_ex_rx_desc*,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;
 int le32_to_cpu (int ) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_tx_free (struct net_device*,int,int) ;

__attribute__((used)) static void ravb_ring_free(struct net_device *ndev, int q)
{
 struct ravb_private *priv = netdev_priv(ndev);
 int num_tx_desc = priv->num_tx_desc;
 int ring_size;
 int i;

 if (priv->rx_ring[q]) {
  for (i = 0; i < priv->num_rx_ring[q]; i++) {
   struct ravb_ex_rx_desc *desc = &priv->rx_ring[q][i];

   if (!dma_mapping_error(ndev->dev.parent,
            le32_to_cpu(desc->dptr)))
    dma_unmap_single(ndev->dev.parent,
       le32_to_cpu(desc->dptr),
       priv->rx_buf_sz,
       DMA_FROM_DEVICE);
  }
  ring_size = sizeof(struct ravb_ex_rx_desc) *
       (priv->num_rx_ring[q] + 1);
  dma_free_coherent(ndev->dev.parent, ring_size, priv->rx_ring[q],
      priv->rx_desc_dma[q]);
  priv->rx_ring[q] = ((void*)0);
 }

 if (priv->tx_ring[q]) {
  ravb_tx_free(ndev, q, 0);

  ring_size = sizeof(struct ravb_tx_desc) *
       (priv->num_tx_ring[q] * num_tx_desc + 1);
  dma_free_coherent(ndev->dev.parent, ring_size, priv->tx_ring[q],
      priv->tx_desc_dma[q]);
  priv->tx_ring[q] = ((void*)0);
 }


 if (priv->rx_skb[q]) {
  for (i = 0; i < priv->num_rx_ring[q]; i++)
   dev_kfree_skb(priv->rx_skb[q][i]);
 }
 kfree(priv->rx_skb[q]);
 priv->rx_skb[q] = ((void*)0);


 kfree(priv->tx_align[q]);
 priv->tx_align[q] = ((void*)0);




 kfree(priv->tx_skb[q]);
 priv->tx_skb[q] = ((void*)0);
}
