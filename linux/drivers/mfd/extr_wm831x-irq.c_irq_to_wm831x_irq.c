
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_irq_data {int dummy; } ;
struct wm831x {int dummy; } ;


 struct wm831x_irq_data* wm831x_irqs ;

__attribute__((used)) static inline struct wm831x_irq_data *irq_to_wm831x_irq(struct wm831x *wm831x,
       int irq)
{
 return &wm831x_irqs[irq];
}
