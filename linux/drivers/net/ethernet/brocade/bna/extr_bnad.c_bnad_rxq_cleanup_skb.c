
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_2__ vector; int * skb; } ;
struct bnad {TYPE_1__* pcidev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_addr ;
 int dma_unmap_addr (TYPE_2__*,int ) ;
 int dma_unmap_addr_set (TYPE_2__*,int ,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static inline void
bnad_rxq_cleanup_skb(struct bnad *bnad, struct bnad_rx_unmap *unmap)
{
 if (!unmap->skb)
  return;

 dma_unmap_single(&bnad->pcidev->dev,
   dma_unmap_addr(&unmap->vector, dma_addr),
   unmap->vector.len, DMA_FROM_DEVICE);
 dev_kfree_skb_any(unmap->skb);
 unmap->skb = ((void*)0);
 dma_unmap_addr_set(&unmap->vector, dma_addr, 0);
 unmap->vector.len = 0;
}
