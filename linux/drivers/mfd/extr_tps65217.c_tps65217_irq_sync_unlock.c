
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int irq_lock; int dev; int irq_mask; } ;
struct irq_data {int dummy; } ;


 int TPS65217_INT_MASK ;
 int TPS65217_PROTECT_NONE ;
 int TPS65217_REG_INT ;
 int dev_err (int ,char*) ;
 struct tps65217* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int tps65217_set_bits (struct tps65217*,int ,int ,int ,int ) ;

__attribute__((used)) static void tps65217_irq_sync_unlock(struct irq_data *data)
{
 struct tps65217 *tps = irq_data_get_irq_chip_data(data);
 int ret;

 ret = tps65217_set_bits(tps, TPS65217_REG_INT, TPS65217_INT_MASK,
    tps->irq_mask, TPS65217_PROTECT_NONE);
 if (ret != 0)
  dev_err(tps->dev, "Failed to sync IRQ masks\n");

 mutex_unlock(&tps->irq_lock);
}
