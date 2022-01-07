
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps65217 {int irq_mask; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int TPS65217_INT_SHIFT ;
 struct tps65217* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void tps65217_irq_disable(struct irq_data *data)
{
 struct tps65217 *tps = irq_data_get_irq_chip_data(data);
 u8 mask = BIT(data->hwirq) << TPS65217_INT_SHIFT;

 tps->irq_mask |= mask;
}
