
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int hpd_is_high; int hpd_ts; int hpd_gpio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int gpiod_get_value (int ) ;
 int ktime_get () ;

__attribute__((used)) static irqreturn_t cec_hpd_gpio_irq_handler(int irq, void *priv)
{
 struct cec_gpio *cec = priv;
 bool is_high = gpiod_get_value(cec->hpd_gpio);

 if (is_high == cec->hpd_is_high)
  return IRQ_HANDLED;
 cec->hpd_ts = ktime_get();
 cec->hpd_is_high = is_high;
 return IRQ_WAKE_THREAD;
}
