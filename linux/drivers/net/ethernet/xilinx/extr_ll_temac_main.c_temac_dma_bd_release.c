
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct temac_local {int tx_bd_p; TYPE_2__* tx_bd_v; int rx_bd_p; TYPE_2__* rx_bd_v; int * rx_skb; int (* dma_out ) (struct temac_local*,int ,int ) ;} ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int phys; } ;


 int DMA_CONTROL_REG ;
 int DMA_CONTROL_RST ;
 int DMA_FROM_DEVICE ;
 int RX_BD_NUM ;
 int TX_BD_NUM ;
 int XTE_MAX_JUMBO_FRAME_SIZE ;
 int dev_kfree_skb (int ) ;
 int dma_free_coherent (int ,int,TYPE_2__*,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int stub1 (struct temac_local*,int ,int ) ;

__attribute__((used)) static void temac_dma_bd_release(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 int i;


 lp->dma_out(lp, DMA_CONTROL_REG, DMA_CONTROL_RST);

 for (i = 0; i < RX_BD_NUM; i++) {
  if (!lp->rx_skb[i])
   break;
  else {
   dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
     XTE_MAX_JUMBO_FRAME_SIZE, DMA_FROM_DEVICE);
   dev_kfree_skb(lp->rx_skb[i]);
  }
 }
 if (lp->rx_bd_v)
  dma_free_coherent(ndev->dev.parent,
    sizeof(*lp->rx_bd_v) * RX_BD_NUM,
    lp->rx_bd_v, lp->rx_bd_p);
 if (lp->tx_bd_v)
  dma_free_coherent(ndev->dev.parent,
    sizeof(*lp->tx_bd_v) * TX_BD_NUM,
    lp->tx_bd_v, lp->tx_bd_p);
}
