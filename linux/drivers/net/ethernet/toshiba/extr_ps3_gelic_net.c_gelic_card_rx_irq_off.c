
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_card {int irq_mask; } ;


 int GELIC_CARD_RXINT ;
 int gelic_card_set_irq_mask (struct gelic_card*,int ) ;

__attribute__((used)) static void gelic_card_rx_irq_off(struct gelic_card *card)
{
 card->irq_mask &= ~GELIC_CARD_RXINT;
 gelic_card_set_irq_mask(card, card->irq_mask);
}
