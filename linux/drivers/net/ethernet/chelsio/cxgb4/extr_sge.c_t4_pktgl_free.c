
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkt_gl {int nfrags; struct page_frag* frags; } ;
struct page_frag {int page; } ;


 int put_page (int ) ;

__attribute__((used)) static void t4_pktgl_free(const struct pkt_gl *gl)
{
 int n;
 const struct page_frag *p;

 for (p = gl->frags, n = gl->nfrags - 1; n--; p++)
  put_page(p->page);
}
