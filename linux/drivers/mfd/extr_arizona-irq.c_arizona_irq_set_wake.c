
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct arizona {int irq; } ;


 struct arizona* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;

__attribute__((used)) static int arizona_irq_set_wake(struct irq_data *data, unsigned int on)
{
 struct arizona *arizona = irq_data_get_irq_chip_data(data);

 return irq_set_irq_wake(arizona->irq, on);
}
