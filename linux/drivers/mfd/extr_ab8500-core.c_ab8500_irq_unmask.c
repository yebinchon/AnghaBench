
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct ab8500 {int* mask; } ;


 int AB8500_INT_GPIO41R ;
 int AB8500_INT_GPIO6R ;
 int AB8540_INT_GPIO43R ;
 int AB8540_INT_GPIO44R ;
 int AB9540_INT_GPIO50R ;
 int AB9540_INT_GPIO54R ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 struct ab8500* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_get_trigger_type (struct irq_data*) ;

__attribute__((used)) static void ab8500_irq_unmask(struct irq_data *data)
{
 struct ab8500 *ab8500 = irq_data_get_irq_chip_data(data);
 unsigned int type = irqd_get_trigger_type(data);
 int offset = data->hwirq;
 int index = offset / 8;
 int mask = 1 << (offset % 8);

 if (type & IRQ_TYPE_EDGE_RISING)
  ab8500->mask[index] &= ~mask;


 if (type & IRQ_TYPE_EDGE_FALLING) {
  if (offset >= AB8500_INT_GPIO6R && offset <= AB8500_INT_GPIO41R)
   ab8500->mask[index + 2] &= ~mask;
  else if (offset >= AB9540_INT_GPIO50R &&
    offset <= AB9540_INT_GPIO54R)
   ab8500->mask[index + 1] &= ~mask;
  else if (offset == AB8540_INT_GPIO43R ||
    offset == AB8540_INT_GPIO44R)

   ab8500->mask[index] &= ~(mask << 1);
  else
   ab8500->mask[index] &= ~mask;
 } else {

  ab8500->mask[index] &= ~mask;
 }
}
