
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct wm831x* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void wm831x_irq_lock(struct irq_data *data)
{
 struct wm831x *wm831x = irq_data_get_irq_chip_data(data);

 mutex_lock(&wm831x->irq_lock);
}
