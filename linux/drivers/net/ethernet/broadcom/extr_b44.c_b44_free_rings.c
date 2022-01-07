
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ring_info {TYPE_2__* skb; int mapping; } ;
struct b44 {TYPE_1__* sdev; struct ring_info* tx_buffers; struct ring_info* rx_buffers; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int dma_dev; } ;


 int B44_RX_RING_SIZE ;
 int B44_TX_RING_SIZE ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int RX_PKT_BUF_SZ ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void b44_free_rings(struct b44 *bp)
{
 struct ring_info *rp;
 int i;

 for (i = 0; i < B44_RX_RING_SIZE; i++) {
  rp = &bp->rx_buffers[i];

  if (rp->skb == ((void*)0))
   continue;
  dma_unmap_single(bp->sdev->dma_dev, rp->mapping, RX_PKT_BUF_SZ,
     DMA_FROM_DEVICE);
  dev_kfree_skb_any(rp->skb);
  rp->skb = ((void*)0);
 }


 for (i = 0; i < B44_TX_RING_SIZE; i++) {
  rp = &bp->tx_buffers[i];

  if (rp->skb == ((void*)0))
   continue;
  dma_unmap_single(bp->sdev->dma_dev, rp->mapping, rp->skb->len,
     DMA_TO_DEVICE);
  dev_kfree_skb_any(rp->skb);
  rp->skb = ((void*)0);
 }
}
