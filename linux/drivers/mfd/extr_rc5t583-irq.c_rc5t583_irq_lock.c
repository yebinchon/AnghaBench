
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc5t583 {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct rc5t583* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void rc5t583_irq_lock(struct irq_data *irq_data)
{
 struct rc5t583 *rc5t583 = irq_data_get_irq_chip_data(irq_data);
 mutex_lock(&rc5t583->irq_lock);
}
