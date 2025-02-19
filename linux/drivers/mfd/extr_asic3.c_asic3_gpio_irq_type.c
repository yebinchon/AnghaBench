
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct irq_data {int irq; } ;
struct asic3 {int* irq_bothedge; int irq_base; int lock; int dev; int gpio; } ;


 int ASIC3_GPIO_EDGE_TRIGGER ;
 int ASIC3_GPIO_LEVEL_TRIGGER ;
 int ASIC3_GPIO_TRIGGER_TYPE ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 scalar_t__ asic3_gpio_get (int *,int) ;
 int asic3_irq_to_bank (struct asic3*,int) ;
 int asic3_irq_to_index (struct asic3*,int) ;
 int asic3_read_register (struct asic3*,int) ;
 int asic3_write_register (struct asic3*,int,int) ;
 int dev_notice (int ,char*) ;
 struct asic3* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int asic3_gpio_irq_type(struct irq_data *data, unsigned int type)
{
 struct asic3 *asic = irq_data_get_irq_chip_data(data);
 u32 bank, index;
 u16 trigger, level, edge, bit;
 unsigned long flags;

 bank = asic3_irq_to_bank(asic, data->irq);
 index = asic3_irq_to_index(asic, data->irq);
 bit = 1<<index;

 raw_spin_lock_irqsave(&asic->lock, flags);
 level = asic3_read_register(asic,
        bank + ASIC3_GPIO_LEVEL_TRIGGER);
 edge = asic3_read_register(asic,
       bank + ASIC3_GPIO_EDGE_TRIGGER);
 trigger = asic3_read_register(asic,
          bank + ASIC3_GPIO_TRIGGER_TYPE);
 asic->irq_bothedge[(data->irq - asic->irq_base) >> 4] &= ~bit;

 if (type == IRQ_TYPE_EDGE_RISING) {
  trigger |= bit;
  edge |= bit;
 } else if (type == IRQ_TYPE_EDGE_FALLING) {
  trigger |= bit;
  edge &= ~bit;
 } else if (type == IRQ_TYPE_EDGE_BOTH) {
  trigger |= bit;
  if (asic3_gpio_get(&asic->gpio, data->irq - asic->irq_base))
   edge &= ~bit;
  else
   edge |= bit;
  asic->irq_bothedge[(data->irq - asic->irq_base) >> 4] |= bit;
 } else if (type == IRQ_TYPE_LEVEL_LOW) {
  trigger &= ~bit;
  level &= ~bit;
 } else if (type == IRQ_TYPE_LEVEL_HIGH) {
  trigger &= ~bit;
  level |= bit;
 } else {





  dev_notice(asic->dev, "irq type not changed\n");
 }
 asic3_write_register(asic, bank + ASIC3_GPIO_LEVEL_TRIGGER,
        level);
 asic3_write_register(asic, bank + ASIC3_GPIO_EDGE_TRIGGER,
        edge);
 asic3_write_register(asic, bank + ASIC3_GPIO_TRIGGER_TYPE,
        trigger);
 raw_spin_unlock_irqrestore(&asic->lock, flags);
 return 0;
}
