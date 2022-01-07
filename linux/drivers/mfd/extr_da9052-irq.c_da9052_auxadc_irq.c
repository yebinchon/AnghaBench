
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t da9052_auxadc_irq(int irq, void *irq_data)
{
 struct da9052 *da9052 = irq_data;

 complete(&da9052->done);

 return IRQ_HANDLED;
}
