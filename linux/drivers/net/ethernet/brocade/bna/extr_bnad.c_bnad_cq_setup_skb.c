
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; int data; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_2__ vector; int * skb; } ;
struct bnad {int netdev; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_addr ;
 int dma_unmap_addr (TYPE_2__*,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int prefetch (int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static inline void
bnad_cq_setup_skb(struct bnad *bnad, struct sk_buff *skb,
    struct bnad_rx_unmap *unmap, u32 len)
{
 prefetch(skb->data);

 dma_unmap_single(&bnad->pcidev->dev,
   dma_unmap_addr(&unmap->vector, dma_addr),
   unmap->vector.len, DMA_FROM_DEVICE);

 skb_put(skb, len);
 skb->protocol = eth_type_trans(skb, bnad->netdev);

 unmap->skb = ((void*)0);
 unmap->vector.len = 0;
}
