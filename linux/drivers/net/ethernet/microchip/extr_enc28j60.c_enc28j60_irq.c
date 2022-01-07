
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc28j60_net {int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t enc28j60_irq(int irq, void *dev_id)
{
 struct enc28j60_net *priv = dev_id;
 schedule_work(&priv->irq_work);

 return IRQ_HANDLED;
}
