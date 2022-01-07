
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sih_agent {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct sih_agent* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void twl4030_sih_bus_lock(struct irq_data *data)
{
 struct sih_agent *agent = irq_data_get_irq_chip_data(data);

 mutex_lock(&agent->irq_lock);
}
