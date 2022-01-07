
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct wm831x*) ;

void wm831x_irq_exit(struct wm831x *wm831x)
{
 if (wm831x->irq)
  free_irq(wm831x->irq, wm831x);
}
