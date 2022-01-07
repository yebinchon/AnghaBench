
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int* gpio_level_low; int* gpio_level_high; int* gpio_update; } ;
struct irq_data {int hwirq; } ;


 int EINVAL ;





 int WM831X_GPN_INT_MODE ;
 int WM831X_GPN_POL ;
 int WM831X_IRQ_GPIO_1 ;
 int WM831X_IRQ_GPIO_11 ;
 int WM831X_NUM_IRQS ;
 struct wm831x* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int wm831x_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct wm831x *wm831x = irq_data_get_irq_chip_data(data);
 int irq;

 irq = data->hwirq;

 if (irq < WM831X_IRQ_GPIO_1 || irq > WM831X_IRQ_GPIO_11) {

  if (irq >= 0 && irq < WM831X_NUM_IRQS)
   return 0;
  else
   return -EINVAL;
 }




 irq -= WM831X_IRQ_GPIO_1;





 wm831x->gpio_level_low[irq] = 0;
 wm831x->gpio_level_high[irq] = 0;
 switch (type) {
 case 132:
  wm831x->gpio_update[irq] = 0x10000 | WM831X_GPN_INT_MODE;
  break;
 case 130:
  wm831x->gpio_update[irq] = 0x10000 | WM831X_GPN_POL;
  break;
 case 131:
  wm831x->gpio_update[irq] = 0x10000;
  break;
 case 129:
  wm831x->gpio_update[irq] = 0x10000 | WM831X_GPN_POL;
  wm831x->gpio_level_high[irq] = 1;
  break;
 case 128:
  wm831x->gpio_update[irq] = 0x10000;
  wm831x->gpio_level_low[irq] = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
