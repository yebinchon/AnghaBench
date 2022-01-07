
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_dropped; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct ethoc {int napi; } ;
typedef int irqreturn_t ;


 int INT_MASK ;
 int INT_MASK_BUSY ;
 int INT_MASK_RX ;
 int INT_MASK_TX ;
 int INT_SOURCE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int *,char*) ;
 int ethoc_ack_irq (struct ethoc*,int) ;
 int ethoc_disable_irq (struct ethoc*,int) ;
 int ethoc_read (struct ethoc*,int ) ;
 int napi_schedule (int *) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ethoc_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct ethoc *priv = netdev_priv(dev);
 u32 pending;
 u32 mask;
 mask = ethoc_read(priv, INT_MASK);
 pending = ethoc_read(priv, INT_SOURCE);
 pending &= mask;

 if (unlikely(pending == 0))
  return IRQ_NONE;

 ethoc_ack_irq(priv, pending);


 if (pending & INT_MASK_BUSY) {
  dev_dbg(&dev->dev, "packet dropped\n");
  dev->stats.rx_dropped++;
 }


 if (pending & (INT_MASK_TX | INT_MASK_RX)) {
  ethoc_disable_irq(priv, INT_MASK_TX | INT_MASK_RX);
  napi_schedule(&priv->napi);
 }

 return IRQ_HANDLED;
}
