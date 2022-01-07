
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_gpio; } ;
struct wm8994 {int edge_irq; TYPE_1__ pdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ gpio_get_value_cansleep (int ) ;
 int handle_nested_irq (int ) ;
 int irq_create_mapping (int ,int ) ;

__attribute__((used)) static irqreturn_t wm8994_edge_irq(int irq, void *data)
{
 struct wm8994 *wm8994 = data;

 while (gpio_get_value_cansleep(wm8994->pdata.irq_gpio))
  handle_nested_irq(irq_create_mapping(wm8994->edge_irq, 0));

 return IRQ_HANDLED;
}
