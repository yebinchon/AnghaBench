
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int v5_ts; int v5_is_high; int adap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cec_queue_pin_5v_event (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t cec_5v_gpio_irq_handler_thread(int irq, void *priv)
{
 struct cec_gpio *cec = priv;

 cec_queue_pin_5v_event(cec->adap, cec->v5_is_high, cec->v5_ts);
 return IRQ_HANDLED;
}
