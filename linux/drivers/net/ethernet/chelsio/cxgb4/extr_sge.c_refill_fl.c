
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {unsigned int avail; size_t pidx; size_t size; unsigned int pend_cred; scalar_t__ cntxt_id; int low; int * desc; struct rx_sw_desc* sdesc; int mapping_err; int alloc_failed; int large_alloc_failed; } ;
struct sge {int fl_pg_order; int starving_fl; scalar_t__ egr_start; int blocked_fl; } ;
struct rx_sw_desc {int dummy; } ;
struct page {int dummy; } ;
struct adapter {struct sge sge; int pdev_dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
typedef int __be64 ;


 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int RX_LARGE_PG_BUF ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 int __free_pages (struct page*,int) ;
 struct page* alloc_pages_node (int,int,int) ;
 void* cpu_to_be64 (int ) ;
 int dev_to_node (int ) ;
 int dma_map_page (int ,struct page*,int ,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int fl_starving (struct adapter*,struct sge_fl*) ;
 int put_page (struct page*) ;
 int ring_fl_db (struct adapter*,struct sge_fl*) ;
 int set_bit (scalar_t__,int ) ;
 int set_rx_sw_desc (struct rx_sw_desc*,struct page*,int ) ;
 int smp_wmb () ;
 scalar_t__ test_bit (scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int refill_fl(struct adapter *adap, struct sge_fl *q, int n,
         gfp_t gfp)
{
 struct sge *s = &adap->sge;
 struct page *pg;
 dma_addr_t mapping;
 unsigned int cred = q->avail;
 __be64 *d = &q->desc[q->pidx];
 struct rx_sw_desc *sd = &q->sdesc[q->pidx];
 int node;






 gfp |= __GFP_NOWARN;
 node = dev_to_node(adap->pdev_dev);

 if (s->fl_pg_order == 0)
  goto alloc_small_pages;




 while (n) {
  pg = alloc_pages_node(node, gfp | __GFP_COMP, s->fl_pg_order);
  if (unlikely(!pg)) {
   q->large_alloc_failed++;
   break;
  }

  mapping = dma_map_page(adap->pdev_dev, pg, 0,
           PAGE_SIZE << s->fl_pg_order,
           PCI_DMA_FROMDEVICE);
  if (unlikely(dma_mapping_error(adap->pdev_dev, mapping))) {
   __free_pages(pg, s->fl_pg_order);
   q->mapping_err++;
   goto out;
  }
  mapping |= RX_LARGE_PG_BUF;
  *d++ = cpu_to_be64(mapping);

  set_rx_sw_desc(sd, pg, mapping);
  sd++;

  q->avail++;
  if (++q->pidx == q->size) {
   q->pidx = 0;
   sd = q->sdesc;
   d = q->desc;
  }
  n--;
 }

alloc_small_pages:
 while (n--) {
  pg = alloc_pages_node(node, gfp, 0);
  if (unlikely(!pg)) {
   q->alloc_failed++;
   break;
  }

  mapping = dma_map_page(adap->pdev_dev, pg, 0, PAGE_SIZE,
           PCI_DMA_FROMDEVICE);
  if (unlikely(dma_mapping_error(adap->pdev_dev, mapping))) {
   put_page(pg);
   q->mapping_err++;
   goto out;
  }
  *d++ = cpu_to_be64(mapping);

  set_rx_sw_desc(sd, pg, mapping);
  sd++;

  q->avail++;
  if (++q->pidx == q->size) {
   q->pidx = 0;
   sd = q->sdesc;
   d = q->desc;
  }
 }

out: cred = q->avail - cred;
 q->pend_cred += cred;
 ring_fl_db(adap, q);

 if (unlikely(fl_starving(adap, q))) {
  smp_wmb();
  q->low++;
  set_bit(q->cntxt_id - adap->sge.egr_start,
   adap->sge.starving_fl);
 }

 return cred;
}
