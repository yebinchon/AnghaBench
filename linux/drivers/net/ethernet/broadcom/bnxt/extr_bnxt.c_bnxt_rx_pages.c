
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct skb_shared_info {unsigned int nr_frags; int * frags; } ;
struct sk_buff {size_t data_len; size_t len; int truesize; } ;
struct rx_agg_cmp {size_t rx_agg_cmp_opaque; int rx_agg_cmp_len_flags_type; } ;
struct pci_dev {int dev; } ;
struct page {int dummy; } ;
struct bnxt_sw_rx_agg_bd {struct page* page; int mapping; int offset; } ;
struct bnxt_rx_ring_info {size_t rx_agg_prod; int rx_agg_bmap; struct bnxt_sw_rx_agg_bd* rx_agg_ring; } ;
struct bnxt_napi {struct bnxt_rx_ring_info* rx_ring; } ;
struct bnxt_cp_ring_info {struct bnxt_napi* bnapi; } ;
struct bnxt {int flags; struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_RX_PAGE_SIZE ;
 int DMA_ATTR_WEAK_ORDERING ;
 int GFP_ATOMIC ;
 size_t NEXT_RX_AGG (size_t) ;
 scalar_t__ PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 size_t RX_AGG_CMP_LEN ;
 size_t RX_AGG_CMP_LEN_SHIFT ;
 int __clear_bit (size_t,int ) ;
 int __skb_frag_set_page (int *,int *) ;
 scalar_t__ bnxt_alloc_rx_page (struct bnxt*,struct bnxt_rx_ring_info*,size_t,int ) ;
 struct rx_agg_cmp* bnxt_get_agg (struct bnxt*,struct bnxt_cp_ring_info*,size_t,scalar_t__) ;
 struct rx_agg_cmp* bnxt_get_tpa_agg_p5 (struct bnxt*,struct bnxt_rx_ring_info*,size_t,scalar_t__) ;
 int bnxt_reuse_rx_agg_bufs (struct bnxt_cp_ring_info*,size_t,scalar_t__,scalar_t__,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_page_attrs (int *,int ,int ,int ,int ) ;
 size_t le32_to_cpu (int ) ;
 int skb_fill_page_desc (struct sk_buff*,scalar_t__,struct page*,int ,size_t) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *bnxt_rx_pages(struct bnxt *bp,
         struct bnxt_cp_ring_info *cpr,
         struct sk_buff *skb, u16 idx,
         u32 agg_bufs, bool tpa)
{
 struct bnxt_napi *bnapi = cpr->bnapi;
 struct pci_dev *pdev = bp->pdev;
 struct bnxt_rx_ring_info *rxr = bnapi->rx_ring;
 u16 prod = rxr->rx_agg_prod;
 bool p5_tpa = 0;
 u32 i;

 if ((bp->flags & BNXT_FLAG_CHIP_P5) && tpa)
  p5_tpa = 1;

 for (i = 0; i < agg_bufs; i++) {
  u16 cons, frag_len;
  struct rx_agg_cmp *agg;
  struct bnxt_sw_rx_agg_bd *cons_rx_buf;
  struct page *page;
  dma_addr_t mapping;

  if (p5_tpa)
   agg = bnxt_get_tpa_agg_p5(bp, rxr, idx, i);
  else
   agg = bnxt_get_agg(bp, cpr, idx, i);
  cons = agg->rx_agg_cmp_opaque;
  frag_len = (le32_to_cpu(agg->rx_agg_cmp_len_flags_type) &
       RX_AGG_CMP_LEN) >> RX_AGG_CMP_LEN_SHIFT;

  cons_rx_buf = &rxr->rx_agg_ring[cons];
  skb_fill_page_desc(skb, i, cons_rx_buf->page,
       cons_rx_buf->offset, frag_len);
  __clear_bit(cons, rxr->rx_agg_bmap);





  mapping = cons_rx_buf->mapping;
  page = cons_rx_buf->page;
  cons_rx_buf->page = ((void*)0);

  if (bnxt_alloc_rx_page(bp, rxr, prod, GFP_ATOMIC) != 0) {
   struct skb_shared_info *shinfo;
   unsigned int nr_frags;

   shinfo = skb_shinfo(skb);
   nr_frags = --shinfo->nr_frags;
   __skb_frag_set_page(&shinfo->frags[nr_frags], ((void*)0));

   dev_kfree_skb(skb);

   cons_rx_buf->page = page;




   rxr->rx_agg_prod = prod;
   bnxt_reuse_rx_agg_bufs(cpr, idx, i, agg_bufs - i, tpa);
   return ((void*)0);
  }

  dma_unmap_page_attrs(&pdev->dev, mapping, BNXT_RX_PAGE_SIZE,
         PCI_DMA_FROMDEVICE,
         DMA_ATTR_WEAK_ORDERING);

  skb->data_len += frag_len;
  skb->len += frag_len;
  skb->truesize += PAGE_SIZE;

  prod = NEXT_RX_AGG(prod);
 }
 rxr->rx_agg_prod = prod;
 return skb;
}
