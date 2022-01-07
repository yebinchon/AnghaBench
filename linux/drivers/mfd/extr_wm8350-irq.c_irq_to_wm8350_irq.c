
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_irq_data {int dummy; } ;
struct wm8350 {int irq_base; } ;


 struct wm8350_irq_data* wm8350_irqs ;

__attribute__((used)) static inline struct wm8350_irq_data *irq_to_wm8350_irq(struct wm8350 *wm8350,
       int irq)
{
 return &wm8350_irqs[irq - wm8350->irq_base];
}
