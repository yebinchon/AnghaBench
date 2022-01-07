
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_dev {scalar_t__ irq_domain; scalar_t__ irq; } ;


 int max8997_irq_thread (int ,struct max8997_dev*) ;

int max8997_irq_resume(struct max8997_dev *max8997)
{
 if (max8997->irq && max8997->irq_domain)
  max8997_irq_thread(0, max8997);
 return 0;
}
