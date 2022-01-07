
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int chip_irq; } ;


 int free_irq (int ,struct wm8350*) ;

int wm8350_irq_exit(struct wm8350 *wm8350)
{
 free_irq(wm8350->chip_irq, wm8350);
 return 0;
}
