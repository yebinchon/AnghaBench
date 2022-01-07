
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct pm860x_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void pm860x_irq_lock(struct irq_data *data)
{
 struct pm860x_chip *chip = irq_data_get_irq_chip_data(data);

 mutex_lock(&chip->irq_lock);
}
