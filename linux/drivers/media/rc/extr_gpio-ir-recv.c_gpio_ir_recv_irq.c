
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rc_dev {int rcdev; int gpiod; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int gpiod_get_value (int ) ;
 int ir_raw_event_store_edge (int ,int) ;

__attribute__((used)) static irqreturn_t gpio_ir_recv_irq(int irq, void *dev_id)
{
 int val;
 struct gpio_rc_dev *gpio_dev = dev_id;

 val = gpiod_get_value(gpio_dev->gpiod);
 if (val >= 0)
  ir_raw_event_store_edge(gpio_dev->rcdev, val == 1);

 return IRQ_HANDLED;
}
