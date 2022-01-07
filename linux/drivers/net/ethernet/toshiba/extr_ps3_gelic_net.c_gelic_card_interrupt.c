
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tail; } ;
struct gelic_card {int irq_status; int irq_mask; int * netdev; int tx_lock; TYPE_1__ tx_chain; scalar_t__ tx_dma_progress; int napi; } ;
typedef int irqreturn_t ;


 int GELIC_CARD_PORT_STATUS_CHANGED ;
 int GELIC_CARD_RXINT ;
 int GELIC_CARD_TXINT ;
 int GELIC_CARD_WLAN_COMMAND_COMPLETED ;
 int GELIC_CARD_WLAN_EVENT_RECEIVED ;
 size_t GELIC_PORT_WIRELESS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int gelic_card_get_ether_port_status (struct gelic_card*,int) ;
 int gelic_card_kick_txdma (struct gelic_card*,int ) ;
 int gelic_card_release_tx_chain (struct gelic_card*,int ) ;
 int gelic_card_rx_irq_off (struct gelic_card*) ;
 int gelic_wl_interrupt (int ,int) ;
 int napi_schedule (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t gelic_card_interrupt(int irq, void *ptr)
{
 unsigned long flags;
 struct gelic_card *card = ptr;
 u64 status;

 status = card->irq_status;

 if (!status)
  return IRQ_NONE;

 status &= card->irq_mask;

 if (status & GELIC_CARD_RXINT) {
  gelic_card_rx_irq_off(card);
  napi_schedule(&card->napi);
 }

 if (status & GELIC_CARD_TXINT) {
  spin_lock_irqsave(&card->tx_lock, flags);
  card->tx_dma_progress = 0;
  gelic_card_release_tx_chain(card, 0);

  gelic_card_kick_txdma(card, card->tx_chain.tail);
  spin_unlock_irqrestore(&card->tx_lock, flags);
 }


 if (status & GELIC_CARD_PORT_STATUS_CHANGED)
  gelic_card_get_ether_port_status(card, 1);







 return IRQ_HANDLED;
}
