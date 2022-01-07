
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnic_wq {int dummy; } ;
struct sk_buff {int dummy; } ;
struct enic {TYPE_1__* pdev; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int * frags; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int enic_dma_map_check (struct enic*,int ) ;
 int enic_queue_wq_desc_cont (struct vnic_wq*,struct sk_buff*,int ,scalar_t__,int,int) ;
 int skb_frag_dma_map (int *,int const*,int ,scalar_t__,int ) ;
 scalar_t__ skb_frag_size (int const*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int enic_queue_wq_skb_cont(struct enic *enic, struct vnic_wq *wq,
      struct sk_buff *skb, unsigned int len_left,
      int loopback)
{
 const skb_frag_t *frag;
 dma_addr_t dma_addr;


 for (frag = skb_shinfo(skb)->frags; len_left; frag++) {
  len_left -= skb_frag_size(frag);
  dma_addr = skb_frag_dma_map(&enic->pdev->dev, frag, 0,
         skb_frag_size(frag),
         DMA_TO_DEVICE);
  if (unlikely(enic_dma_map_check(enic, dma_addr)))
   return -ENOMEM;
  enic_queue_wq_desc_cont(wq, skb, dma_addr, skb_frag_size(frag),
     (len_left == 0),
     loopback);
 }

 return 0;
}
