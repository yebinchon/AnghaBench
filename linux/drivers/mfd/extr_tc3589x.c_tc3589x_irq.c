
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc3589x {int domain; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TC3589x_IRQST ;
 int __ffs (int) ;
 int handle_nested_irq (int) ;
 int irq_create_mapping (int ,int) ;
 int tc3589x_reg_read (struct tc3589x*,int ) ;

__attribute__((used)) static irqreturn_t tc3589x_irq(int irq, void *data)
{
 struct tc3589x *tc3589x = data;
 int status;

again:
 status = tc3589x_reg_read(tc3589x, TC3589x_IRQST);
 if (status < 0)
  return IRQ_NONE;

 while (status) {
  int bit = __ffs(status);
  int virq = irq_create_mapping(tc3589x->domain, bit);

  handle_nested_irq(virq);
  status &= ~(1 << bit);
 }







 status = tc3589x_reg_read(tc3589x, TC3589x_IRQST);
 if (status)
  goto again;

 return IRQ_HANDLED;
}
