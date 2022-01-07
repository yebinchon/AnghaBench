
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct cc770_priv {int* obj_flags; int (* post_irq ) (struct cc770_priv*) ;int (* pre_irq ) (struct cc770_priv*) ;TYPE_1__ can; } ;
typedef int irqreturn_t ;


 scalar_t__ CAN_STATE_STOPPED ;
 int CC770_MAX_IRQ ;
 int CC770_OBJ_FLAG_RTR ;
 int CC770_OBJ_FLAG_RX ;
 int CC770_OBJ_MAX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int cc770_rtr_interrupt (struct net_device*,int) ;
 int cc770_rx_interrupt (struct net_device*,int) ;
 scalar_t__ cc770_status_interrupt (struct net_device*) ;
 int cc770_tx_interrupt (struct net_device*,int) ;
 int interrupt ;
 int intid2obj (int) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct cc770_priv*) ;
 int stub2 (struct cc770_priv*) ;

__attribute__((used)) static irqreturn_t cc770_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct cc770_priv *priv = netdev_priv(dev);
 u8 intid;
 int o, n = 0;


 if (priv->can.state == CAN_STATE_STOPPED)
  return IRQ_NONE;

 if (priv->pre_irq)
  priv->pre_irq(priv);

 while (n < CC770_MAX_IRQ) {

  intid = cc770_read_reg(priv, interrupt);
  if (!intid)
   break;
  n++;

  if (intid == 1) {

   if (cc770_status_interrupt(dev))
    break;
  } else {
   o = intid2obj(intid);

   if (o >= CC770_OBJ_MAX) {
    netdev_err(dev, "Unexpected interrupt id %d\n",
        intid);
    continue;
   }

   if (priv->obj_flags[o] & CC770_OBJ_FLAG_RTR)
    cc770_rtr_interrupt(dev, o);
   else if (priv->obj_flags[o] & CC770_OBJ_FLAG_RX)
    cc770_rx_interrupt(dev, o);
   else
    cc770_tx_interrupt(dev, o);
  }
 }

 if (priv->post_irq)
  priv->post_irq(priv);

 if (n >= CC770_MAX_IRQ)
  netdev_dbg(dev, "%d messages handled in ISR", n);

 return (n) ? IRQ_HANDLED : IRQ_NONE;
}
