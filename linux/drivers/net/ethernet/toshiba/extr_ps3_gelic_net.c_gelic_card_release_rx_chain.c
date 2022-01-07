
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gelic_descr {struct gelic_descr* next; TYPE_2__* skb; scalar_t__ buf_addr; } ;
struct TYPE_3__ {struct gelic_descr* head; } ;
struct gelic_card {TYPE_1__ rx_chain; } ;
struct TYPE_4__ {int len; } ;


 int DMA_FROM_DEVICE ;
 int GELIC_DESCR_DMA_NOT_IN_USE ;
 int be32_to_cpu (scalar_t__) ;
 int ctodev (struct gelic_card*) ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int gelic_descr_set_status (struct gelic_descr*,int ) ;

__attribute__((used)) static void gelic_card_release_rx_chain(struct gelic_card *card)
{
 struct gelic_descr *descr = card->rx_chain.head;

 do {
  if (descr->skb) {
   dma_unmap_single(ctodev(card),
      be32_to_cpu(descr->buf_addr),
      descr->skb->len,
      DMA_FROM_DEVICE);
   descr->buf_addr = 0;
   dev_kfree_skb_any(descr->skb);
   descr->skb = ((void*)0);
   gelic_descr_set_status(descr,
            GELIC_DESCR_DMA_NOT_IN_USE);
  }
  descr = descr->next;
 } while (descr != card->rx_chain.head);
}
