
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {unsigned int avail; size_t pidx; size_t size; unsigned int pend_cred; int cntxt_id; int * desc; struct rx_sw_desc* sdesc; int alloc_failed; int large_alloc_failed; } ;
struct sge {int fl_pg_order; int starving_fl; } ;
struct rx_sw_desc {int dummy; } ;
struct page {int dummy; } ;
struct adapter {struct sge sge; int pdev_dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
typedef int __be64 ;


 int BUG_ON (int) ;
 int FL_PER_EQ_UNIT ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_LARGE_BUF ;
 int __GFP_NOWARN ;
 struct page* __dev_alloc_page (int ) ;
 struct page* __dev_alloc_pages (int ,int) ;
 int __free_pages (struct page*,int) ;
 void* cpu_to_be64 (int ) ;
 int dma_map_page (int ,struct page*,int ,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int fl_starving (struct adapter*,struct sge_fl*) ;
 int poison_buf (struct page*,int) ;
 int put_page (struct page*) ;
 int ring_fl_db (struct adapter*,struct sge_fl*) ;
 int set_bit (int ,int ) ;
 int set_rx_sw_desc (struct rx_sw_desc*,struct page*,int ) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int refill_fl(struct adapter *adapter, struct sge_fl *fl,
         int n, gfp_t gfp)
{
 struct sge *s = &adapter->sge;
 struct page *page;
 dma_addr_t dma_addr;
 unsigned int cred = fl->avail;
 __be64 *d = &fl->desc[fl->pidx];
 struct rx_sw_desc *sdesc = &fl->sdesc[fl->pidx];






 BUG_ON(fl->avail + n > fl->size - FL_PER_EQ_UNIT);

 gfp |= __GFP_NOWARN;







 if (s->fl_pg_order == 0)
  goto alloc_small_pages;

 while (n) {
  page = __dev_alloc_pages(gfp, s->fl_pg_order);
  if (unlikely(!page)) {





   fl->large_alloc_failed++;
   break;
  }
  poison_buf(page, PAGE_SIZE << s->fl_pg_order);

  dma_addr = dma_map_page(adapter->pdev_dev, page, 0,
     PAGE_SIZE << s->fl_pg_order,
     PCI_DMA_FROMDEVICE);
  if (unlikely(dma_mapping_error(adapter->pdev_dev, dma_addr))) {
   __free_pages(page, s->fl_pg_order);
   goto out;
  }
  dma_addr |= RX_LARGE_BUF;
  *d++ = cpu_to_be64(dma_addr);

  set_rx_sw_desc(sdesc, page, dma_addr);
  sdesc++;

  fl->avail++;
  if (++fl->pidx == fl->size) {
   fl->pidx = 0;
   sdesc = fl->sdesc;
   d = fl->desc;
  }
  n--;
 }

alloc_small_pages:
 while (n--) {
  page = __dev_alloc_page(gfp);
  if (unlikely(!page)) {
   fl->alloc_failed++;
   break;
  }
  poison_buf(page, PAGE_SIZE);

  dma_addr = dma_map_page(adapter->pdev_dev, page, 0, PAGE_SIZE,
           PCI_DMA_FROMDEVICE);
  if (unlikely(dma_mapping_error(adapter->pdev_dev, dma_addr))) {
   put_page(page);
   break;
  }
  *d++ = cpu_to_be64(dma_addr);

  set_rx_sw_desc(sdesc, page, dma_addr);
  sdesc++;

  fl->avail++;
  if (++fl->pidx == fl->size) {
   fl->pidx = 0;
   sdesc = fl->sdesc;
   d = fl->desc;
  }
 }

out:





 cred = fl->avail - cred;
 fl->pend_cred += cred;
 ring_fl_db(adapter, fl);

 if (unlikely(fl_starving(adapter, fl))) {
  smp_wmb();
  set_bit(fl->cntxt_id, adapter->sge.starving_fl);
 }

 return cred;
}
