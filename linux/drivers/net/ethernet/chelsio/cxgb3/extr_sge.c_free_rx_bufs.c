
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * page; } ;
struct sge_fl {unsigned int cidx; unsigned int size; TYPE_1__ pg_chunk; int order; struct rx_sw_desc* sdesc; int credits; } ;
struct rx_sw_desc {int dummy; } ;
struct pci_dev {int dummy; } ;


 int __free_pages (int *,int ) ;
 int clear_rx_desc (struct pci_dev*,struct sge_fl*,struct rx_sw_desc*) ;

__attribute__((used)) static void free_rx_bufs(struct pci_dev *pdev, struct sge_fl *q)
{
 unsigned int cidx = q->cidx;

 while (q->credits--) {
  struct rx_sw_desc *d = &q->sdesc[cidx];


  clear_rx_desc(pdev, q, d);
  if (++cidx == q->size)
   cidx = 0;
 }

 if (q->pg_chunk.page) {
  __free_pages(q->pg_chunk.page, q->order);
  q->pg_chunk.page = ((void*)0);
 }
}
