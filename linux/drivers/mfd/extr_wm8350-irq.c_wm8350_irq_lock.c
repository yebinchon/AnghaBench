
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct wm8350* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void wm8350_irq_lock(struct irq_data *data)
{
 struct wm8350 *wm8350 = irq_data_get_irq_chip_data(data);

 mutex_lock(&wm8350->irq_lock);
}
