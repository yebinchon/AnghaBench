
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da903x_chip {int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t da903x_irq_handler(int irq, void *data)
{
 struct da903x_chip *chip = data;

 disable_irq_nosync(irq);
 (void)schedule_work(&chip->irq_work);

 return IRQ_HANDLED;
}
