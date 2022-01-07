
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_net_descr {struct spider_net_descr* next; int bus_addr; int hwdescr; } ;
struct TYPE_2__ {struct spider_net_descr* head; struct spider_net_descr* tail; } ;
struct spider_net_card {int tx_timer; TYPE_1__ tx_chain; } ;


 scalar_t__ SPIDER_NET_DESCR_CARDOWNED ;
 int SPIDER_NET_DMA_TX_VALUE ;
 int SPIDER_NET_GDTDCHA ;
 int SPIDER_NET_GDTDMACCNTR ;
 int SPIDER_NET_TX_DMA_EN ;
 scalar_t__ SPIDER_NET_TX_TIMER ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ spider_net_get_descr_status (int ) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static inline void
spider_net_kick_tx_dma(struct spider_net_card *card)
{
 struct spider_net_descr *descr;

 if (spider_net_read_reg(card, SPIDER_NET_GDTDMACCNTR) &
   SPIDER_NET_TX_DMA_EN)
  goto out;

 descr = card->tx_chain.tail;
 for (;;) {
  if (spider_net_get_descr_status(descr->hwdescr) ==
    SPIDER_NET_DESCR_CARDOWNED) {
   spider_net_write_reg(card, SPIDER_NET_GDTDCHA,
     descr->bus_addr);
   spider_net_write_reg(card, SPIDER_NET_GDTDMACCNTR,
     SPIDER_NET_DMA_TX_VALUE);
   break;
  }
  if (descr == card->tx_chain.head)
   break;
  descr = descr->next;
 }

out:
 mod_timer(&card->tx_timer, jiffies + SPIDER_NET_TX_TIMER);
}
