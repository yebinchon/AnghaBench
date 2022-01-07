
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct asic3 {int irq_base; int lock; } ;


 int ASIC3_INTMASK_MASK0 ;
 scalar_t__ ASIC3_INTR_BASE ;
 scalar_t__ ASIC3_INTR_INT_MASK ;
 int ASIC3_NUM_GPIOS ;
 int asic3_read_register (struct asic3*,scalar_t__) ;
 int asic3_write_register (struct asic3*,scalar_t__,int) ;
 struct asic3* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void asic3_unmask_irq(struct irq_data *data)
{
 struct asic3 *asic = irq_data_get_irq_chip_data(data);
 int regval;
 unsigned long flags;

 raw_spin_lock_irqsave(&asic->lock, flags);
 regval = asic3_read_register(asic,
         ASIC3_INTR_BASE +
         ASIC3_INTR_INT_MASK);

 regval |= (ASIC3_INTMASK_MASK0 <<
     (data->irq - (asic->irq_base + ASIC3_NUM_GPIOS)));

 asic3_write_register(asic,
        ASIC3_INTR_BASE +
        ASIC3_INTR_INT_MASK,
        regval);
 raw_spin_unlock_irqrestore(&asic->lock, flags);
}
