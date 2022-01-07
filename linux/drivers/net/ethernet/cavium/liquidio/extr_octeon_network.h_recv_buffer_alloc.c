
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ cb; scalar_t__ data; } ;
struct page {int dummy; } ;
struct octeon_skb_page_info {int dma; scalar_t__ page_offset; struct page* page; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int GFP_ATOMIC ;
 scalar_t__ MIN_SKB_SIZE ;
 int PAGE_SIZE ;
 scalar_t__ SKB_ADJ ;
 unsigned long SKB_ADJ_MASK ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_page (int *,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
*recv_buffer_alloc(struct octeon_device *oct,
     struct octeon_skb_page_info *pg_info)
{
 struct page *page;
 struct sk_buff *skb;
 struct octeon_skb_page_info *skb_pg_info;

 page = alloc_page(GFP_ATOMIC);
 if (unlikely(!page))
  return ((void*)0);

 skb = dev_alloc_skb(MIN_SKB_SIZE + SKB_ADJ);
 if (unlikely(!skb)) {
  __free_page(page);
  pg_info->page = ((void*)0);
  return ((void*)0);
 }

 if ((unsigned long)skb->data & SKB_ADJ_MASK) {
  u32 r = SKB_ADJ - ((unsigned long)skb->data & SKB_ADJ_MASK);

  skb_reserve(skb, r);
 }

 skb_pg_info = ((struct octeon_skb_page_info *)(skb->cb));

 pg_info->dma = dma_map_page(&oct->pci_dev->dev, page, 0,
        PAGE_SIZE, DMA_FROM_DEVICE);


 if (dma_mapping_error(&oct->pci_dev->dev, pg_info->dma)) {
  __free_page(page);
  dev_kfree_skb_any((struct sk_buff *)skb);
  pg_info->page = ((void*)0);
  return ((void*)0);
 }

 pg_info->page = page;
 pg_info->page_offset = 0;
 skb_pg_info->page = page;
 skb_pg_info->page_offset = 0;
 skb_pg_info->dma = pg_info->dma;

 return (void *)skb;
}
