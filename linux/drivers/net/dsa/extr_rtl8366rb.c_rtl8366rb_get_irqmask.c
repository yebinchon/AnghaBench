
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;


 int BIT (int) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static u32 rtl8366rb_get_irqmask(struct irq_data *d)
{
 int line = irqd_to_hwirq(d);
 u32 val;




 if (line < 12)
  val = BIT(line) | BIT(line + 6);
 else
  val = BIT(line);
 return val;
}
