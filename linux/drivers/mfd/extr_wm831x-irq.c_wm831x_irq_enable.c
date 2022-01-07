
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_irq_data {int reg; int mask; } ;
struct wm831x {int * irq_masks_cur; } ;
struct irq_data {int hwirq; } ;


 struct wm831x* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct wm831x_irq_data* irq_to_wm831x_irq (struct wm831x*,int ) ;

__attribute__((used)) static void wm831x_irq_enable(struct irq_data *data)
{
 struct wm831x *wm831x = irq_data_get_irq_chip_data(data);
 struct wm831x_irq_data *irq_data = irq_to_wm831x_irq(wm831x,
            data->hwirq);

 wm831x->irq_masks_cur[irq_data->reg - 1] &= ~irq_data->mask;
}
