
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int hpd_ts; int hpd_is_high; int adap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cec_queue_pin_hpd_event (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t cec_hpd_gpio_irq_handler_thread(int irq, void *priv)
{
 struct cec_gpio *cec = priv;

 cec_queue_pin_hpd_event(cec->adap, cec->hpd_is_high, cec->hpd_ts);
 return IRQ_HANDLED;
}
