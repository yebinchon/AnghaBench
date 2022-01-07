
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gelic_descr {scalar_t__ next; } ;
struct TYPE_2__ {scalar_t__ tail; struct gelic_descr* head; } ;
struct gelic_card {TYPE_1__ tx_chain; } ;


 scalar_t__ GELIC_DESCR_DMA_NOT_IN_USE ;
 scalar_t__ gelic_descr_get_status (struct gelic_descr*) ;

__attribute__((used)) static struct gelic_descr *
gelic_card_get_next_tx_descr(struct gelic_card *card)
{
 if (!card->tx_chain.head)
  return ((void*)0);

 if (card->tx_chain.tail != card->tx_chain.head->next &&
     gelic_descr_get_status(card->tx_chain.head) ==
     GELIC_DESCR_DMA_NOT_IN_USE)
  return card->tx_chain.head;
 else
  return ((void*)0);

}
