
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x {int irq_lock; int * mask_reg; int dev; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ TPS6586X_INT_MASK1 ;
 int WARN_ON (int) ;
 struct tps6586x* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int tps6586x_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void tps6586x_irq_sync_unlock(struct irq_data *data)
{
 struct tps6586x *tps6586x = irq_data_get_irq_chip_data(data);
 int i;

 for (i = 0; i < ARRAY_SIZE(tps6586x->mask_reg); i++) {
  int ret;
  ret = tps6586x_write(tps6586x->dev,
         TPS6586X_INT_MASK1 + i,
         tps6586x->mask_reg[i]);
  WARN_ON(ret);
 }

 mutex_unlock(&tps6586x->irq_lock);
}
