
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct dpaa2_sg_entry {int dummy; } ;
struct dpaa2_eth_priv {int iommu_domain; TYPE_2__* net_dev; } ;
struct dpaa2_eth_channel {int buf_count; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DPAA2_ETH_MAX_SG_ENTRIES ;
 int DPAA2_ETH_RX_BUF_RAW_SIZE ;
 int DPAA2_ETH_RX_BUF_SIZE ;
 int PAGE_SIZE ;
 int WARN_ONCE (int,char*) ;
 struct sk_buff* build_skb (void*,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 void* dpaa2_iova_to_virt (int ,int ) ;
 int dpaa2_sg_get_addr (struct dpaa2_sg_entry*) ;
 int dpaa2_sg_get_len (struct dpaa2_sg_entry*) ;
 int dpaa2_sg_get_offset (struct dpaa2_sg_entry*) ;
 scalar_t__ dpaa2_sg_is_final (struct dpaa2_sg_entry*) ;
 int free_pages (unsigned long,int ) ;
 unsigned long page_address (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int,struct page*,int,int ,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_head_page (void*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static struct sk_buff *build_frag_skb(struct dpaa2_eth_priv *priv,
          struct dpaa2_eth_channel *ch,
          struct dpaa2_sg_entry *sgt)
{
 struct sk_buff *skb = ((void*)0);
 struct device *dev = priv->net_dev->dev.parent;
 void *sg_vaddr;
 dma_addr_t sg_addr;
 u16 sg_offset;
 u32 sg_length;
 struct page *page, *head_page;
 int page_offset;
 int i;

 for (i = 0; i < DPAA2_ETH_MAX_SG_ENTRIES; i++) {
  struct dpaa2_sg_entry *sge = &sgt[i];






  sg_addr = dpaa2_sg_get_addr(sge);
  sg_vaddr = dpaa2_iova_to_virt(priv->iommu_domain, sg_addr);
  dma_unmap_page(dev, sg_addr, DPAA2_ETH_RX_BUF_SIZE,
          DMA_BIDIRECTIONAL);

  sg_length = dpaa2_sg_get_len(sge);

  if (i == 0) {

   skb = build_skb(sg_vaddr, DPAA2_ETH_RX_BUF_RAW_SIZE);
   if (unlikely(!skb)) {



    free_pages((unsigned long)sg_vaddr, 0);




    while (!dpaa2_sg_is_final(&sgt[i]) &&
           i < DPAA2_ETH_MAX_SG_ENTRIES)
     i++;
    break;
   }

   sg_offset = dpaa2_sg_get_offset(sge);
   skb_reserve(skb, sg_offset);
   skb_put(skb, sg_length);
  } else {

   page = virt_to_page(sg_vaddr);
   head_page = virt_to_head_page(sg_vaddr);






   page_offset = ((unsigned long)sg_vaddr &
    (PAGE_SIZE - 1)) +
    (page_address(page) - page_address(head_page));

   skb_add_rx_frag(skb, i - 1, head_page, page_offset,
     sg_length, DPAA2_ETH_RX_BUF_SIZE);
  }

  if (dpaa2_sg_is_final(sge))
   break;
 }

 WARN_ONCE(i == DPAA2_ETH_MAX_SG_ENTRIES, "Final bit not set in SGT");


 ch->buf_count -= i + 2;

 return skb;
}
