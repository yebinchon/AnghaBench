
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_dev {scalar_t__ irq; scalar_t__ ono; } ;


 int free_irq (scalar_t__,struct max8998_dev*) ;

void max8998_irq_exit(struct max8998_dev *max8998)
{
 if (max8998->ono)
  free_irq(max8998->ono, max8998);

 if (max8998->irq)
  free_irq(max8998->irq, max8998);
}
