
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct greth_private {int devlock; int napi; TYPE_1__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int control; int status; } ;


 int GRETH_INT_RE ;
 int GRETH_INT_RX ;
 int GRETH_INT_TE ;
 int GRETH_INT_TX ;
 int GRETH_REGLOAD (int ) ;
 int GRETH_RXI ;
 int GRETH_TXI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int greth_disable_irqs (struct greth_private*) ;
 int napi_schedule (int *) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t greth_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct greth_private *greth;
 u32 status, ctrl;
 irqreturn_t retval = IRQ_NONE;

 greth = netdev_priv(dev);

 spin_lock(&greth->devlock);


 status = GRETH_REGLOAD(greth->regs->status);





 ctrl = GRETH_REGLOAD(greth->regs->control);


 if (((status & (GRETH_INT_RE | GRETH_INT_RX)) && (ctrl & GRETH_RXI)) ||
     ((status & (GRETH_INT_TE | GRETH_INT_TX)) && (ctrl & GRETH_TXI))) {
  retval = IRQ_HANDLED;


  greth_disable_irqs(greth);
  napi_schedule(&greth->napi);
 }

 spin_unlock(&greth->devlock);

 return retval;
}
