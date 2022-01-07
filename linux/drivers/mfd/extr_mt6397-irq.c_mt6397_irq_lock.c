
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6397_chip {int irqlock; } ;
struct irq_data {int dummy; } ;


 struct mt6397_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void mt6397_irq_lock(struct irq_data *data)
{
 struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);

 mutex_lock(&mt6397->irqlock);
}
