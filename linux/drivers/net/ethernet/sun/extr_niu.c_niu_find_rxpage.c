
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rx_ring_info {struct page** rxhash; } ;
struct page {int index; int mapping; } ;


 int BUG () ;
 int PAGE_MASK ;
 unsigned int niu_hash_rxaddr (struct rx_ring_info*,int ) ;

__attribute__((used)) static struct page *niu_find_rxpage(struct rx_ring_info *rp, u64 addr,
        struct page ***link)
{
 unsigned int h = niu_hash_rxaddr(rp, addr);
 struct page *p, **pp;

 addr &= PAGE_MASK;
 pp = &rp->rxhash[h];
 for (; (p = *pp) != ((void*)0); pp = (struct page **) &p->mapping) {
  if (p->index == addr) {
   *link = pp;
   goto found;
  }
 }
 BUG();

found:
 return p;
}
