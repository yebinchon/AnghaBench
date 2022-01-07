
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct htcpld_chip {unsigned int flow_type; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 struct htcpld_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int htcpld_set_type(struct irq_data *data, unsigned int flags)
{
 struct htcpld_chip *chip = irq_data_get_irq_chip_data(data);

 if (flags & ~IRQ_TYPE_SENSE_MASK)
  return -EINVAL;


 if (flags & (IRQ_TYPE_LEVEL_LOW|IRQ_TYPE_LEVEL_HIGH))
  return -EINVAL;

 chip->flow_type = flags;
 return 0;
}
