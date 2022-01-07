
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunqec {struct sunqe** qes; scalar_t__ gregs; } ;
struct sunqe {int lock; scalar_t__ qcregs; int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ CREG_STAT ;
 int CREG_STAT_ERRORS ;
 int CREG_STAT_RXIRQ ;
 int CREG_STAT_TXIRQ ;
 scalar_t__ CREG_TIMASK ;
 scalar_t__ GLOB_STAT ;
 int IRQ_HANDLED ;
 scalar_t__ TX_BUFFS_AVAIL (struct sunqe*) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 scalar_t__ qe_is_bolixed (struct sunqe*,int) ;
 int qe_rx (struct sunqe*) ;
 int qe_tx_reclaim (struct sunqe*) ;
 int sbus_readl (scalar_t__) ;
 int sbus_writel (int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t qec_interrupt(int irq, void *dev_id)
{
 struct sunqec *qecp = dev_id;
 u32 qec_status;
 int channel = 0;


 qec_status = sbus_readl(qecp->gregs + GLOB_STAT);
 while (channel < 4) {
  if (qec_status & 0xf) {
   struct sunqe *qep = qecp->qes[channel];
   u32 qe_status;

   qe_status = sbus_readl(qep->qcregs + CREG_STAT);
   if (qe_status & CREG_STAT_ERRORS) {
    if (qe_is_bolixed(qep, qe_status))
     goto next;
   }
   if (qe_status & CREG_STAT_RXIRQ)
    qe_rx(qep);
   if (netif_queue_stopped(qep->dev) &&
       (qe_status & CREG_STAT_TXIRQ)) {
    spin_lock(&qep->lock);
    qe_tx_reclaim(qep);
    if (TX_BUFFS_AVAIL(qep) > 0) {



     netif_wake_queue(qep->dev);
     sbus_writel(1, qep->qcregs + CREG_TIMASK);
    }
    spin_unlock(&qep->lock);
   }
 next:
   ;
  }
  qec_status >>= 4;
  channel++;
 }

 return IRQ_HANDLED;
}
