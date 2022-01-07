
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788_irq_data {int irq_lock; int lp; int * enabled; } ;
struct irq_data {int hwirq; } ;
typedef enum lp8788_int_id { ____Placeholder_lp8788_int_id } lp8788_int_id ;


 int _irq_to_enable_addr (int) ;
 int _irq_to_mask (int) ;
 int _irq_to_val (int,int ) ;
 struct lp8788_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lp8788_update_bits (int ,int ,int ,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void lp8788_irq_bus_sync_unlock(struct irq_data *data)
{
 struct lp8788_irq_data *irqd = irq_data_get_irq_chip_data(data);
 enum lp8788_int_id irq = data->hwirq;
 u8 addr, mask, val;

 addr = _irq_to_enable_addr(irq);
 mask = _irq_to_mask(irq);
 val = _irq_to_val(irq, irqd->enabled[irq]);

 lp8788_update_bits(irqd->lp, addr, mask, val);

 mutex_unlock(&irqd->irq_lock);
}
