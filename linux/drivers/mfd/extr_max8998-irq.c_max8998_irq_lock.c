
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_dev {int irqlock; } ;
struct irq_data {int dummy; } ;


 struct max8998_dev* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void max8998_irq_lock(struct irq_data *data)
{
 struct max8998_dev *max8998 = irq_data_get_irq_chip_data(data);

 mutex_lock(&max8998->irqlock);
}
