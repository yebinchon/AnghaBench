
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_irq {int wakeirqs; } ;
struct irq_data {int dummy; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct twl6030_irq* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int twl6030_irq_set_wake(struct irq_data *d, unsigned int on)
{
 struct twl6030_irq *pdata = irq_data_get_irq_chip_data(d);

 if (on)
  atomic_inc(&pdata->wakeirqs);
 else
  atomic_dec(&pdata->wakeirqs);

 return 0;
}
