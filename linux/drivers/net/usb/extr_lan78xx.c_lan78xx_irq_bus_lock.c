
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_data {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct irq_domain_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void lan78xx_irq_bus_lock(struct irq_data *irqd)
{
 struct irq_domain_data *data = irq_data_get_irq_chip_data(irqd);

 mutex_lock(&data->irq_lock);
}
