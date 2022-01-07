
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_irq_data {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct lp8788_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void lp8788_irq_bus_lock(struct irq_data *data)
{
 struct lp8788_irq_data *irqd = irq_data_get_irq_chip_data(data);

 mutex_lock(&irqd->irq_lock);
}
