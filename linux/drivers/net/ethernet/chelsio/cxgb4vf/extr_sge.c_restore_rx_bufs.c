
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_fl {size_t cidx; size_t size; int avail; struct rx_sw_desc* sdesc; } ;
struct rx_sw_desc {int dma_addr; int page; } ;
struct pkt_gl {TYPE_1__* frags; } ;
struct TYPE_2__ {int page; } ;


 int RX_UNMAPPED_BUF ;

__attribute__((used)) static void restore_rx_bufs(const struct pkt_gl *gl, struct sge_fl *fl,
       int frags)
{
 struct rx_sw_desc *sdesc;

 while (frags--) {
  if (fl->cidx == 0)
   fl->cidx = fl->size - 1;
  else
   fl->cidx--;
  sdesc = &fl->sdesc[fl->cidx];
  sdesc->page = gl->frags[frags].page;
  sdesc->dma_addr |= RX_UNMAPPED_BUF;
  fl->avail++;
 }
}
