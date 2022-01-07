
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_dev {scalar_t__ irq; scalar_t__ irq_domain; } ;


 int max8998_irq_thread (scalar_t__,struct max8998_dev*) ;

int max8998_irq_resume(struct max8998_dev *max8998)
{
 if (max8998->irq && max8998->irq_domain)
  max8998_irq_thread(max8998->irq, max8998);
 return 0;
}
