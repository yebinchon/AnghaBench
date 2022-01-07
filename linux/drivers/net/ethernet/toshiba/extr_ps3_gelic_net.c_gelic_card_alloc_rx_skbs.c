
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gelic_descr_chain {int tail; } ;
struct gelic_card {TYPE_1__* rx_top; struct gelic_descr_chain rx_chain; } ;
struct TYPE_2__ {int prev; } ;


 int gelic_card_fill_rx_chain (struct gelic_card*) ;

__attribute__((used)) static int gelic_card_alloc_rx_skbs(struct gelic_card *card)
{
 struct gelic_descr_chain *chain;
 int ret;
 chain = &card->rx_chain;
 ret = gelic_card_fill_rx_chain(card);
 chain->tail = card->rx_top->prev;
 return ret;
}
