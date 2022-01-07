
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {struct orinoco_private* priv; } ;
struct TYPE_4__ {scalar_t__ iobase; TYPE_1__* ops; } ;
struct orinoco_private {TYPE_2__ hw; int lock; int hw_unavailable; } ;
struct TYPE_3__ {int (* unlock_irqrestore ) (int *,unsigned long*) ;int (* lock_irqsave ) (int *,unsigned long*) ;} ;


 int ioport_unmap (scalar_t__) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int stub1 (int *,unsigned long*) ;
 int stub2 (int *,unsigned long*) ;

__attribute__((used)) static void
spectrum_cs_release(struct pcmcia_device *link)
{
 struct orinoco_private *priv = link->priv;
 unsigned long flags;



 priv->hw.ops->lock_irqsave(&priv->lock, &flags);
 priv->hw_unavailable++;
 priv->hw.ops->unlock_irqrestore(&priv->lock, &flags);

 pcmcia_disable_device(link);
 if (priv->hw.iobase)
  ioport_unmap(priv->hw.iobase);
}
