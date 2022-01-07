
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fst_port_info {int index; int run; } ;
struct fst_card_info {scalar_t__ state; scalar_t__ family; int card_no; struct fst_port_info* ports; scalar_t__ dmatx_in_progress; int dma_txpos; int dma_len_tx; int dma_port_tx; scalar_t__ pci_conf; scalar_t__ dmarx_in_progress; int dma_rxpos; int dma_skb_rx; int dma_len_rx; int dma_port_rx; int irq; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int rdindex; int * evntbuff; int wrindex; } ;
struct TYPE_4__ {int tx_fifo_errors; int tx_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
 int DBG_ASS ;
 int DBG_INIT ;
 int DBG_INTR ;
 int DBG_RX ;
 int DBG_TX ;
 scalar_t__ DMACSR0 ;
 scalar_t__ DMACSR1 ;
 scalar_t__ FST_CARD_INT ;
 scalar_t__ FST_FAMILY_TXU ;
 scalar_t__ FST_IFAILED ;
 int FST_RDB (struct fst_card_info*,int ) ;
 unsigned int FST_RDL (struct fst_card_info*,int ) ;
 scalar_t__ FST_RUNNING ;
 scalar_t__ FST_RX_DMA_INT ;
 scalar_t__ FST_TX_DMA_INT ;
 int FST_WRB (struct fst_card_info*,int ,int) ;
 int FST_WRL (struct fst_card_info*,int ,int ) ;


 scalar_t__ INTCSR_9054 ;
 int IRQ_HANDLED ;
 int MAX_CIRBUFF ;





 int dbg (int ,char*,...) ;
 int fst_clear_intr (struct fst_card_info*) ;
 int fst_int_task ;
 int fst_intr_ctlchg (struct fst_card_info*,struct fst_port_info*) ;
 int fst_intr_te1_alarm (struct fst_card_info*,struct fst_port_info*) ;
 int fst_q_work_item (int *,int ) ;
 int fst_rx_dma_complete (struct fst_card_info*,int ,int ,int ,int ) ;
 int fst_tx_dma_complete (struct fst_card_info*,int ,int ,int ) ;
 int fst_work_intq ;
 unsigned int inl (scalar_t__) ;
 TYPE_3__ interruptEvent ;
 int interruptHandshake ;
 int interruptRetryCount ;
 int outb (int,scalar_t__) ;
 TYPE_2__* port_to_dev (struct fst_port_info*) ;
 int pr_err (char*,int,...) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t
fst_intr(int dummy, void *dev_id)
{
 struct fst_card_info *card = dev_id;
 struct fst_port_info *port;
 int rdidx;
 int wridx;
 int event;
 unsigned int dma_intcsr = 0;
 unsigned int do_card_interrupt;
 unsigned int int_retry_count;






 dbg(DBG_INTR, "intr: %d %p\n", card->irq, card);
 if (card->state != FST_RUNNING) {
  pr_err("Interrupt received for card %d in a non running state (%d)\n",
         card->card_no, card->state);






  fst_clear_intr(card);
  return IRQ_HANDLED;
 }


 fst_clear_intr(card);




 do_card_interrupt = 0;
 if (FST_RDB(card, interruptHandshake) == 1) {
  do_card_interrupt += FST_CARD_INT;

  FST_WRB(card, interruptHandshake, 0xEE);
 }
 if (card->family == FST_FAMILY_TXU) {



  dma_intcsr = inl(card->pci_conf + INTCSR_9054);
  if (dma_intcsr & 0x00200000) {



   dbg(DBG_RX, "DMA Rx xfer complete\n");
   outb(0x8, card->pci_conf + DMACSR0);
   fst_rx_dma_complete(card, card->dma_port_rx,
         card->dma_len_rx, card->dma_skb_rx,
         card->dma_rxpos);
   card->dmarx_in_progress = 0;
   do_card_interrupt += FST_RX_DMA_INT;
  }
  if (dma_intcsr & 0x00400000) {



   dbg(DBG_TX, "DMA Tx xfer complete\n");
   outb(0x8, card->pci_conf + DMACSR1);
   fst_tx_dma_complete(card, card->dma_port_tx,
         card->dma_len_tx, card->dma_txpos);
   card->dmatx_in_progress = 0;
   do_card_interrupt += FST_TX_DMA_INT;
  }
 }




 int_retry_count = FST_RDL(card, interruptRetryCount);
 if (int_retry_count) {
  dbg(DBG_ASS, "Card %d int_retry_count is  %d\n",
      card->card_no, int_retry_count);
  FST_WRL(card, interruptRetryCount, 0);
 }

 if (!do_card_interrupt) {
  return IRQ_HANDLED;
 }


 fst_q_work_item(&fst_work_intq, card->card_no);
 tasklet_schedule(&fst_int_task);


 rdidx = FST_RDB(card, interruptEvent.rdindex) & 0x1f;
 wridx = FST_RDB(card, interruptEvent.wrindex) & 0x1f;
 while (rdidx != wridx) {
  event = FST_RDB(card, interruptEvent.evntbuff[rdidx]);
  port = &card->ports[event & 0x03];

  dbg(DBG_INTR, "Processing Interrupt event: %x\n", event);

  switch (event) {
  case 132:
   dbg(DBG_INTR, "TE1 Alarm intr\n");
   if (port->run)
    fst_intr_te1_alarm(card, port);
   break;

  case 138:
  case 137:
  case 136:
  case 135:
   if (port->run)
    fst_intr_ctlchg(card, port);
   break;

  case 142:
  case 141:
  case 140:
  case 139:
   dbg(DBG_TX, "Abort complete port %d\n", port->index);
   break;

  case 131:
  case 130:
  case 129:
  case 128:



   dbg(DBG_TX, "Tx underflow port %d\n", port->index);
   port_to_dev(port)->stats.tx_errors++;
   port_to_dev(port)->stats.tx_fifo_errors++;
   dbg(DBG_ASS, "Tx underflow on card %d port %d\n",
       card->card_no, port->index);
   break;

  case 134:
   dbg(DBG_INIT, "Card init OK intr\n");
   break;

  case 133:
   dbg(DBG_INIT, "Card init FAILED intr\n");
   card->state = FST_IFAILED;
   break;

  default:
   pr_err("intr: unknown card event %d. ignored\n", event);
   break;
  }


  if (++rdidx >= MAX_CIRBUFF)
   rdidx = 0;
 }
 FST_WRB(card, interruptEvent.rdindex, rdidx);
        return IRQ_HANDLED;
}
