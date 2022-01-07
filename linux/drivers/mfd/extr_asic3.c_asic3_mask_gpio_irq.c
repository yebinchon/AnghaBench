
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int irq; } ;
struct asic3 {int lock; } ;


 int ASIC3_GPIO_MASK ;
 int asic3_irq_to_bank (struct asic3*,int ) ;
 int asic3_irq_to_index (struct asic3*,int ) ;
 int asic3_read_register (struct asic3*,int) ;
 int asic3_write_register (struct asic3*,int,int) ;
 struct asic3* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void asic3_mask_gpio_irq(struct irq_data *data)
{
 struct asic3 *asic = irq_data_get_irq_chip_data(data);
 u32 val, bank, index;
 unsigned long flags;

 bank = asic3_irq_to_bank(asic, data->irq);
 index = asic3_irq_to_index(asic, data->irq);

 raw_spin_lock_irqsave(&asic->lock, flags);
 val = asic3_read_register(asic, bank + ASIC3_GPIO_MASK);
 val |= 1 << index;
 asic3_write_register(asic, bank + ASIC3_GPIO_MASK, val);
 raw_spin_unlock_irqrestore(&asic->lock, flags);
}
