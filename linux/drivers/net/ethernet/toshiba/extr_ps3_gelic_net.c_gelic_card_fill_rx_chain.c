
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gelic_descr {struct gelic_descr* next; int skb; } ;
struct TYPE_2__ {struct gelic_descr* head; } ;
struct gelic_card {TYPE_1__ rx_chain; } ;


 int gelic_card_release_rx_chain (struct gelic_card*) ;
 int gelic_descr_prepare_rx (struct gelic_card*,struct gelic_descr*) ;

__attribute__((used)) static int gelic_card_fill_rx_chain(struct gelic_card *card)
{
 struct gelic_descr *descr = card->rx_chain.head;
 int ret;

 do {
  if (!descr->skb) {
   ret = gelic_descr_prepare_rx(card, descr);
   if (ret)
    goto rewind;
  }
  descr = descr->next;
 } while (descr != card->rx_chain.head);

 return 0;
rewind:
 gelic_card_release_rx_chain(card);
 return ret;
}
