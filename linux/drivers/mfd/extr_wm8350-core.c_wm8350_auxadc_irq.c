
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int auxadc_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t wm8350_auxadc_irq(int irq, void *irq_data)
{
 struct wm8350 *wm8350 = irq_data;

 complete(&wm8350->auxadc_done);

 return IRQ_HANDLED;
}
