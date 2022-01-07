
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct ab8500 {int transfer_ongoing; int irq_lock; } ;


 int atomic_inc (int *) ;
 struct ab8500* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void ab8500_irq_lock(struct irq_data *data)
{
 struct ab8500 *ab8500 = irq_data_get_irq_chip_data(data);

 mutex_lock(&ab8500->irq_lock);
 atomic_inc(&ab8500->transfer_ongoing);
}
