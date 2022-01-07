
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnad_rx_info {struct bnad_rx_ctrl* rx_ctrl; int rx; } ;
struct bnad_rx_ctrl {scalar_t__ ccb; } ;
struct bnad {int num_tx; int num_txq_per_tx; int num_rx; int num_rxp_per_rx; struct bnad_rx_info* rx_info; TYPE_1__* tx_info; int bna_lock; int bna; int run_flags; } ;
struct bna_tcb {int flags; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct bna_tcb** tcb; } ;


 int BNAD_RF_MBOX_IRQ_DISABLED ;
 int BNAD_TXQ_TX_STARTED ;
 int BNA_IS_INTX_DATA_INTR (int ) ;
 scalar_t__ BNA_IS_MBOX_ERR_INTR (int *,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bna_intr_status_get (int *,int ) ;
 int bna_mbox_handler (int *,int ) ;
 int bnad_netif_rx_schedule_poll (struct bnad*,scalar_t__) ;
 int bnad_tx_complete (struct bnad*,struct bna_tcb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
bnad_isr(int irq, void *data)
{
 int i, j;
 u32 intr_status;
 unsigned long flags;
 struct bnad *bnad = (struct bnad *)data;
 struct bnad_rx_info *rx_info;
 struct bnad_rx_ctrl *rx_ctrl;
 struct bna_tcb *tcb = ((void*)0);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (unlikely(test_bit(BNAD_RF_MBOX_IRQ_DISABLED, &bnad->run_flags))) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  return IRQ_NONE;
 }

 bna_intr_status_get(&bnad->bna, intr_status);

 if (unlikely(!intr_status)) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  return IRQ_NONE;
 }

 if (BNA_IS_MBOX_ERR_INTR(&bnad->bna, intr_status))
  bna_mbox_handler(&bnad->bna, intr_status);

 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 if (!BNA_IS_INTX_DATA_INTR(intr_status))
  return IRQ_HANDLED;



 for (i = 0; i < bnad->num_tx; i++) {
  for (j = 0; j < bnad->num_txq_per_tx; j++) {
   tcb = bnad->tx_info[i].tcb[j];
   if (tcb && test_bit(BNAD_TXQ_TX_STARTED, &tcb->flags))
    bnad_tx_complete(bnad, bnad->tx_info[i].tcb[j]);
  }
 }

 for (i = 0; i < bnad->num_rx; i++) {
  rx_info = &bnad->rx_info[i];
  if (!rx_info->rx)
   continue;
  for (j = 0; j < bnad->num_rxp_per_rx; j++) {
   rx_ctrl = &rx_info->rx_ctrl[j];
   if (rx_ctrl->ccb)
    bnad_netif_rx_schedule_poll(bnad,
           rx_ctrl->ccb);
  }
 }
 return IRQ_HANDLED;
}
