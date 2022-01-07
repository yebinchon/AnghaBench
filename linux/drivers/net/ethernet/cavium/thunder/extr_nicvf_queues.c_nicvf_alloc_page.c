
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbdr {size_t pgidx; int pgalloc; int pgcnt; struct pgcache* pgcache; scalar_t__ is_xdp; } ;
struct pgcache {int ref_count; struct page* page; scalar_t__ dma_addr; } ;
struct page {int _refcount; } ;
struct nicvf {struct page* rb_page; TYPE_2__* pnicvf; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* drv_stats; } ;
struct TYPE_3__ {int page_alloc; } ;


 int XDP_PAGE_REFCNT_REFILL ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 struct page* alloc_pages (int,int ) ;
 int page_ref_add (struct page*,int) ;
 int page_ref_count (struct page*) ;
 int prefetch (int *) ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static inline struct pgcache *nicvf_alloc_page(struct nicvf *nic,
            struct rbdr *rbdr, gfp_t gfp)
{
 int ref_count;
 struct page *page = ((void*)0);
 struct pgcache *pgcache, *next;


 pgcache = &rbdr->pgcache[rbdr->pgidx];
 page = pgcache->page;

 if (page) {
  ref_count = page_ref_count(page);





  if (rbdr->is_xdp) {
   if (ref_count == pgcache->ref_count)
    pgcache->ref_count--;
   else
    page = ((void*)0);
  } else if (ref_count != 1) {
   page = ((void*)0);
  }
 }

 if (!page) {
  page = alloc_pages(gfp | __GFP_COMP | __GFP_NOWARN, 0);
  if (!page)
   return ((void*)0);

  this_cpu_inc(nic->pnicvf->drv_stats->page_alloc);


  if (rbdr->pgalloc >= rbdr->pgcnt) {

   nic->rb_page = page;
   return ((void*)0);
  }


  pgcache->page = page;
  pgcache->dma_addr = 0;
  pgcache->ref_count = 0;
  rbdr->pgalloc++;
 }


 if (rbdr->is_xdp) {







  if (!pgcache->ref_count) {
   pgcache->ref_count = XDP_PAGE_REFCNT_REFILL;
   page_ref_add(page, XDP_PAGE_REFCNT_REFILL);
  }
 } else {




  page_ref_add(page, 1);
 }

 rbdr->pgidx++;
 rbdr->pgidx &= (rbdr->pgcnt - 1);


 next = &rbdr->pgcache[rbdr->pgidx];
 page = next->page;
 if (page)
  prefetch(&page->_refcount);

 return pgcache;
}
