
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_eth_txdesc {int dummy; } ;
struct sh_eth_rxdesc {int dummy; } ;
struct sh_eth_private {int rx_buf_sz; int num_rx_ring; int num_tx_ring; void* tx_ring; int tx_desc_dma; TYPE_2__* pdev; scalar_t__ dirty_rx; void* rx_ring; int rx_desc_dma; void* tx_skbuff; void* rx_skbuff; TYPE_1__* cd; } ;
struct net_device {int mtu; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ rpadir; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NET_IP_ALIGN ;
 int PKT_BUF_SZ ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 void* kcalloc (int,int,int ) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_ring_free (struct net_device*) ;

__attribute__((used)) static int sh_eth_ring_init(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int rx_ringsize, tx_ringsize;






 mdp->rx_buf_sz = (ndev->mtu <= 1492 ? PKT_BUF_SZ :
     (((ndev->mtu + 26 + 7) & ~7) + 2 + 16));
 if (mdp->cd->rpadir)
  mdp->rx_buf_sz += NET_IP_ALIGN;


 mdp->rx_skbuff = kcalloc(mdp->num_rx_ring, sizeof(*mdp->rx_skbuff),
     GFP_KERNEL);
 if (!mdp->rx_skbuff)
  return -ENOMEM;

 mdp->tx_skbuff = kcalloc(mdp->num_tx_ring, sizeof(*mdp->tx_skbuff),
     GFP_KERNEL);
 if (!mdp->tx_skbuff)
  goto ring_free;


 rx_ringsize = sizeof(struct sh_eth_rxdesc) * mdp->num_rx_ring;
 mdp->rx_ring = dma_alloc_coherent(&mdp->pdev->dev, rx_ringsize,
       &mdp->rx_desc_dma, GFP_KERNEL);
 if (!mdp->rx_ring)
  goto ring_free;

 mdp->dirty_rx = 0;


 tx_ringsize = sizeof(struct sh_eth_txdesc) * mdp->num_tx_ring;
 mdp->tx_ring = dma_alloc_coherent(&mdp->pdev->dev, tx_ringsize,
       &mdp->tx_desc_dma, GFP_KERNEL);
 if (!mdp->tx_ring)
  goto ring_free;
 return 0;

ring_free:

 sh_eth_ring_free(ndev);

 return -ENOMEM;
}
