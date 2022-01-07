
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt6397_chip {int irqlock; int * irq_masks_cur; int * int_con; int regmap; } ;
struct irq_data {int dummy; } ;


 struct mt6397_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void mt6397_irq_sync_unlock(struct irq_data *data)
{
 struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);

 regmap_write(mt6397->regmap, mt6397->int_con[0],
       mt6397->irq_masks_cur[0]);
 regmap_write(mt6397->regmap, mt6397->int_con[1],
       mt6397->irq_masks_cur[1]);

 mutex_unlock(&mt6397->irqlock);
}
