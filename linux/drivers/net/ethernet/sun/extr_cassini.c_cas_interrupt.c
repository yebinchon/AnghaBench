
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int lock; int napi; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int INTR_RX_DONE ;
 int INTR_TX_ALL ;
 int INTR_TX_INTME ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ REG_INTR_STATUS ;
 int cas_handle_irq (struct net_device*,struct cas*,int) ;
 int cas_mask_intr (struct cas*) ;
 int cas_rx_ringN (struct cas*,int ,int ) ;
 int cas_tx (struct net_device*,struct cas*,int) ;
 int napi_schedule (int *) ;
 struct cas* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t cas_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct cas *cp = netdev_priv(dev);
 unsigned long flags;
 u32 status = readl(cp->regs + REG_INTR_STATUS);

 if (status == 0)
  return IRQ_NONE;

 spin_lock_irqsave(&cp->lock, flags);
 if (status & (INTR_TX_ALL | INTR_TX_INTME)) {
  cas_tx(dev, cp, status);
  status &= ~(INTR_TX_ALL | INTR_TX_INTME);
 }

 if (status & INTR_RX_DONE) {




  cas_rx_ringN(cp, 0, 0);

  status &= ~INTR_RX_DONE;
 }

 if (status)
  cas_handle_irq(dev, cp, status);
 spin_unlock_irqrestore(&cp->lock, flags);
 return IRQ_HANDLED;
}
