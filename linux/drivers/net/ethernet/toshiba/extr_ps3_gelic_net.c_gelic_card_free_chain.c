
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_descr {scalar_t__ bus_addr; struct gelic_descr* next; } ;
struct gelic_card {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int GELIC_DESCR_SIZE ;
 int ctodev (struct gelic_card*) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void gelic_card_free_chain(struct gelic_card *card,
      struct gelic_descr *descr_in)
{
 struct gelic_descr *descr;

 for (descr = descr_in; descr && descr->bus_addr; descr = descr->next) {
  dma_unmap_single(ctodev(card), descr->bus_addr,
     GELIC_DESCR_SIZE, DMA_BIDIRECTIONAL);
  descr->bus_addr = 0;
 }
}
