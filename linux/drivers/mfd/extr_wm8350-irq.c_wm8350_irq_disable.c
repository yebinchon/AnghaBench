
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_irq_data {size_t reg; int mask; } ;
struct wm8350 {int * irq_masks; } ;
struct irq_data {int irq; } ;


 struct wm8350* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct wm8350_irq_data* irq_to_wm8350_irq (struct wm8350*,int ) ;

__attribute__((used)) static void wm8350_irq_disable(struct irq_data *data)
{
 struct wm8350 *wm8350 = irq_data_get_irq_chip_data(data);
 struct wm8350_irq_data *irq_data = irq_to_wm8350_irq(wm8350,
            data->irq);

 wm8350->irq_masks[irq_data->reg] |= irq_data->mask;
}
