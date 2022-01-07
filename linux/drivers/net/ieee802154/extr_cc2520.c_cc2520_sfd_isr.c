
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cc2520_private {TYPE_1__* spi; int lock; int tx_complete; scalar_t__ is_tx; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_dbg (int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t cc2520_sfd_isr(int irq, void *data)
{
 struct cc2520_private *priv = data;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (priv->is_tx) {
  priv->is_tx = 0;
  spin_unlock_irqrestore(&priv->lock, flags);
  dev_dbg(&priv->spi->dev, "SFD for TX\n");
  complete(&priv->tx_complete);
 } else {
  spin_unlock_irqrestore(&priv->lock, flags);
  dev_dbg(&priv->spi->dev, "SFD for RX\n");
 }

 return IRQ_HANDLED;
}
