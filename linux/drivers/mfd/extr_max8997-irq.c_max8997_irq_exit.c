
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_dev {scalar_t__ irq; scalar_t__ ono; } ;


 int free_irq (scalar_t__,struct max8997_dev*) ;

void max8997_irq_exit(struct max8997_dev *max8997)
{
 if (max8997->ono)
  free_irq(max8997->ono, max8997);

 if (max8997->irq)
  free_irq(max8997->irq, max8997);
}
