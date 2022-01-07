
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct tps65217* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void tps65217_irq_lock(struct irq_data *data)
{
 struct tps65217 *tps = irq_data_get_irq_chip_data(data);

 mutex_lock(&tps->irq_lock);
}
