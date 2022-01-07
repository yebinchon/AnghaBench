
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ep93xx_priv {int rx_lock; int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_INTEN ;
 int REG_INTEN_TX ;
 int REG_INTSTSC ;
 int REG_INTSTS_RX ;
 int REG_INTSTS_TX ;
 int __napi_schedule (int *) ;
 int ep93xx_tx_complete (struct net_device*) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;
 int rdl (struct ep93xx_priv*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wrl (struct ep93xx_priv*,int ,int ) ;

__attribute__((used)) static irqreturn_t ep93xx_irq(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct ep93xx_priv *ep = netdev_priv(dev);
 u32 status;

 status = rdl(ep, REG_INTSTSC);
 if (status == 0)
  return IRQ_NONE;

 if (status & REG_INTSTS_RX) {
  spin_lock(&ep->rx_lock);
  if (likely(napi_schedule_prep(&ep->napi))) {
   wrl(ep, REG_INTEN, REG_INTEN_TX);
   __napi_schedule(&ep->napi);
  }
  spin_unlock(&ep->rx_lock);
 }

 if (status & REG_INTSTS_TX)
  ep93xx_tx_complete(dev);

 return IRQ_HANDLED;
}
