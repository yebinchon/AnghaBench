
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {scalar_t__* gpio_update; scalar_t__* irq_masks_cur; scalar_t__* irq_masks_cache; int irq_lock; int dev; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ WM831X_GPIO1_CONTROL ;
 int WM831X_GPN_INT_MODE ;
 int WM831X_GPN_POL ;
 scalar_t__ WM831X_INTERRUPT_STATUS_1_MASK ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 struct wm831x* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int wm831x_reg_write (struct wm831x*,scalar_t__,scalar_t__) ;
 int wm831x_set_bits (struct wm831x*,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void wm831x_irq_sync_unlock(struct irq_data *data)
{
 struct wm831x *wm831x = irq_data_get_irq_chip_data(data);
 int i;

 for (i = 0; i < ARRAY_SIZE(wm831x->gpio_update); i++) {
  if (wm831x->gpio_update[i]) {
   wm831x_set_bits(wm831x, WM831X_GPIO1_CONTROL + i,
     WM831X_GPN_INT_MODE | WM831X_GPN_POL,
     wm831x->gpio_update[i]);
   wm831x->gpio_update[i] = 0;
  }
 }

 for (i = 0; i < ARRAY_SIZE(wm831x->irq_masks_cur); i++) {


  if (wm831x->irq_masks_cur[i] != wm831x->irq_masks_cache[i]) {
   dev_dbg(wm831x->dev, "IRQ mask sync: %x = %x\n",
    WM831X_INTERRUPT_STATUS_1_MASK + i,
    wm831x->irq_masks_cur[i]);

   wm831x->irq_masks_cache[i] = wm831x->irq_masks_cur[i];
   wm831x_reg_write(wm831x,
      WM831X_INTERRUPT_STATUS_1_MASK + i,
      wm831x->irq_masks_cur[i]);
  }
 }

 mutex_unlock(&wm831x->irq_lock);
}
