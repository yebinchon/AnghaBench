
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_txdesc {int dummy; } ;
struct sh_eth_rxdesc {int addr; } ;
struct sh_eth_private {int num_rx_ring; int num_tx_ring; scalar_t__* tx_skbuff; struct sh_eth_rxdesc* tx_ring; int tx_desc_dma; TYPE_1__* pdev; scalar_t__* rx_skbuff; struct sh_eth_rxdesc* rx_ring; int rx_desc_dma; int rx_buf_sz; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ALIGN (int ,int) ;
 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (scalar_t__) ;
 int dma_free_coherent (int *,int,struct sh_eth_rxdesc*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (scalar_t__*) ;
 int le32_to_cpu (int ) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_tx_free (struct net_device*,int) ;

__attribute__((used)) static void sh_eth_ring_free(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int ringsize, i;

 if (mdp->rx_ring) {
  for (i = 0; i < mdp->num_rx_ring; i++) {
   if (mdp->rx_skbuff[i]) {
    struct sh_eth_rxdesc *rxdesc = &mdp->rx_ring[i];

    dma_unmap_single(&mdp->pdev->dev,
       le32_to_cpu(rxdesc->addr),
       ALIGN(mdp->rx_buf_sz, 32),
       DMA_FROM_DEVICE);
   }
  }
  ringsize = sizeof(struct sh_eth_rxdesc) * mdp->num_rx_ring;
  dma_free_coherent(&mdp->pdev->dev, ringsize, mdp->rx_ring,
      mdp->rx_desc_dma);
  mdp->rx_ring = ((void*)0);
 }


 if (mdp->rx_skbuff) {
  for (i = 0; i < mdp->num_rx_ring; i++)
   dev_kfree_skb(mdp->rx_skbuff[i]);
 }
 kfree(mdp->rx_skbuff);
 mdp->rx_skbuff = ((void*)0);

 if (mdp->tx_ring) {
  sh_eth_tx_free(ndev, 0);

  ringsize = sizeof(struct sh_eth_txdesc) * mdp->num_tx_ring;
  dma_free_coherent(&mdp->pdev->dev, ringsize, mdp->tx_ring,
      mdp->tx_desc_dma);
  mdp->tx_ring = ((void*)0);
 }


 kfree(mdp->tx_skbuff);
 mdp->tx_skbuff = ((void*)0);
}
