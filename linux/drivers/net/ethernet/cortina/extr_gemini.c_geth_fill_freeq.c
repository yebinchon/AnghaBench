
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int wptr; unsigned int rptr; } ;
union dma_rwptr {TYPE_1__ bits; int bits32; } ;
struct page {int dummy; } ;
struct gmac_queue_page {struct page* page; } ;
struct gemini_ethernet {unsigned int freeq_frag_order; unsigned int freeq_order; int freeq_lock; scalar_t__ base; int dev; struct gmac_queue_page* freeq_pages; } ;


 scalar_t__ GLOBAL_SWFQ_RWPTR_REG ;
 unsigned int PAGE_SHIFT ;
 int dev_dbg (int ,char*,unsigned int,int,int) ;
 struct page* geth_freeq_alloc_map_page (struct gemini_ethernet*,unsigned int) ;
 int page_ref_add (struct page*,int) ;
 int page_ref_count (struct page*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int geth_fill_freeq(struct gemini_ethernet *geth, bool refill)
{
 unsigned int fpp_order = PAGE_SHIFT - geth->freeq_frag_order;
 unsigned int count = 0;
 unsigned int pn, epn;
 unsigned long flags;
 union dma_rwptr rw;
 unsigned int m_pn;


 m_pn = (1 << (geth->freeq_order - fpp_order)) - 1;

 spin_lock_irqsave(&geth->freeq_lock, flags);

 rw.bits32 = readl(geth->base + GLOBAL_SWFQ_RWPTR_REG);
 pn = (refill ? rw.bits.wptr : rw.bits.rptr) >> fpp_order;
 epn = (rw.bits.rptr >> fpp_order) - 1;
 epn &= m_pn;


 while (pn != epn) {
  struct gmac_queue_page *gpage;
  struct page *page;

  gpage = &geth->freeq_pages[pn];
  page = gpage->page;

  dev_dbg(geth->dev, "fill entry %d page ref count %d add %d refs\n",
   pn, page_ref_count(page), 1 << fpp_order);

  if (page_ref_count(page) > 1) {
   unsigned int fl = (pn - epn) & m_pn;

   if (fl > 64 >> fpp_order)
    break;

   page = geth_freeq_alloc_map_page(geth, pn);
   if (!page)
    break;
  }


  page_ref_add(page, 1 << fpp_order);
  count += 1 << fpp_order;
  pn++;
  pn &= m_pn;
 }

 writew(pn << fpp_order, geth->base + GLOBAL_SWFQ_RWPTR_REG + 2);

 spin_unlock_irqrestore(&geth->freeq_lock, flags);

 return count;
}
