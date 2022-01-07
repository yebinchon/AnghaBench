
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int irq_lock; int * irq_masks; int regmap; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int WARN_ON (int ) ;
 scalar_t__ WM8350_INT_STATUS_1_MASK ;
 struct wm8350* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void wm8350_irq_sync_unlock(struct irq_data *data)
{
 struct wm8350 *wm8350 = irq_data_get_irq_chip_data(data);
 int i;

 for (i = 0; i < ARRAY_SIZE(wm8350->irq_masks); i++) {


  WARN_ON(regmap_update_bits(wm8350->regmap,
        WM8350_INT_STATUS_1_MASK + i,
        0xffff, wm8350->irq_masks[i]));
 }

 mutex_unlock(&wm8350->irq_lock);
}
