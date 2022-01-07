
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_queue {struct page* pages; } ;
struct page {scalar_t__ private; } ;
typedef int gfp_t ;


 struct page* alloc_page (int ) ;

__attribute__((used)) static struct page *get_a_page(struct receive_queue *rq, gfp_t gfp_mask)
{
 struct page *p = rq->pages;

 if (p) {
  rq->pages = (struct page *)p->private;

  p->private = 0;
 } else
  p = alloc_page(gfp_mask);
 return p;
}
