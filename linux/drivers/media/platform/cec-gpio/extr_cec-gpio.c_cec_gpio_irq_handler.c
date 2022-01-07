
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int cec_gpio; int adap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cec_pin_changed (int ,int ) ;
 int gpiod_get_value (int ) ;

__attribute__((used)) static irqreturn_t cec_gpio_irq_handler(int irq, void *priv)
{
 struct cec_gpio *cec = priv;

 cec_pin_changed(cec->adap, gpiod_get_value(cec->cec_gpio));
 return IRQ_HANDLED;
}
