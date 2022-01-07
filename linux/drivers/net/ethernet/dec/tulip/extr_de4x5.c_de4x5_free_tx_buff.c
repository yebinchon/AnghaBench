
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct de4x5_private {int ** tx_skb; TYPE_1__* tx_ring; int gendev; } ;
struct TYPE_2__ {int des1; int buf; } ;


 int DMA_TO_DEVICE ;
 int TD_TBS1 ;
 int dev_kfree_skb_irq (int *) ;
 int dma_unmap_single (int ,int,int,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void
de4x5_free_tx_buff(struct de4x5_private *lp, int entry)
{
    dma_unmap_single(lp->gendev, le32_to_cpu(lp->tx_ring[entry].buf),
       le32_to_cpu(lp->tx_ring[entry].des1) & TD_TBS1,
       DMA_TO_DEVICE);
    if ((u_long) lp->tx_skb[entry] > 1)
 dev_kfree_skb_irq(lp->tx_skb[entry]);
    lp->tx_skb[entry] = ((void*)0);
}
