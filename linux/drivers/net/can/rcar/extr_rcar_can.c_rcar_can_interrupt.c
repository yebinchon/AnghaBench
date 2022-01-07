
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rcar_can_priv {int ier; int napi; TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ier; int isr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RCAR_CAN_IER_RXFIE ;
 int RCAR_CAN_ISR_ERSF ;
 int RCAR_CAN_ISR_RXFF ;
 int RCAR_CAN_ISR_TXFF ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int rcar_can_error (struct net_device*) ;
 int rcar_can_tx_done (struct net_device*) ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static irqreturn_t rcar_can_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = dev_id;
 struct rcar_can_priv *priv = netdev_priv(ndev);
 u8 isr;

 isr = readb(&priv->regs->isr);
 if (!(isr & priv->ier))
  return IRQ_NONE;

 if (isr & RCAR_CAN_ISR_ERSF)
  rcar_can_error(ndev);

 if (isr & RCAR_CAN_ISR_TXFF)
  rcar_can_tx_done(ndev);

 if (isr & RCAR_CAN_ISR_RXFF) {
  if (napi_schedule_prep(&priv->napi)) {

   priv->ier &= ~RCAR_CAN_IER_RXFIE;
   writeb(priv->ier, &priv->regs->ier);
   __napi_schedule(&priv->napi);
  }
 }

 return IRQ_HANDLED;
}
