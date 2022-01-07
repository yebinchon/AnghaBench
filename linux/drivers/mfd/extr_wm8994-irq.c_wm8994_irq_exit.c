
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994 {int irq_data; int irq; } ;


 int regmap_del_irq_chip (int ,int ) ;

void wm8994_irq_exit(struct wm8994 *wm8994)
{
 regmap_del_irq_chip(wm8994->irq, wm8994->irq_data);
}
