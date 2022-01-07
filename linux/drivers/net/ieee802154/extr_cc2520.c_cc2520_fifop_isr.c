
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc2520_private {int fifop_irqwork; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t cc2520_fifop_isr(int irq, void *data)
{
 struct cc2520_private *priv = data;

 schedule_work(&priv->fifop_irqwork);

 return IRQ_HANDLED;
}
