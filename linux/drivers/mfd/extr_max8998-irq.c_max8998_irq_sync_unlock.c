
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_dev {scalar_t__* irq_masks_cur; scalar_t__* irq_masks_cache; int irqlock; int i2c; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ MAX8998_REG_IRQM1 ;
 struct max8998_dev* irq_data_get_irq_chip_data (struct irq_data*) ;
 int max8998_write_reg (int ,scalar_t__,scalar_t__) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void max8998_irq_sync_unlock(struct irq_data *data)
{
 struct max8998_dev *max8998 = irq_data_get_irq_chip_data(data);
 int i;

 for (i = 0; i < ARRAY_SIZE(max8998->irq_masks_cur); i++) {




  if (max8998->irq_masks_cur[i] != max8998->irq_masks_cache[i]) {
   max8998->irq_masks_cache[i] = max8998->irq_masks_cur[i];
   max8998_write_reg(max8998->i2c, MAX8998_REG_IRQM1 + i,
     max8998->irq_masks_cur[i]);
  }
 }

 mutex_unlock(&max8998->irqlock);
}
