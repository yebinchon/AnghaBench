
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkt_gl {int nfrags; TYPE_1__* frags; } ;
struct TYPE_2__ {int page; } ;


 int put_page (int ) ;

__attribute__((used)) static void t4vf_pktgl_free(const struct pkt_gl *gl)
{
 int frag;

 frag = gl->nfrags - 1;
 while (frag--)
  put_page(gl->frags[frag].page);
}
