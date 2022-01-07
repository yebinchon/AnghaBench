
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int v5_is_high; int v5_ts; int v5_gpio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int gpiod_get_value (int ) ;
 int ktime_get () ;

__attribute__((used)) static irqreturn_t cec_5v_gpio_irq_handler(int irq, void *priv)
{
 struct cec_gpio *cec = priv;
 bool is_high = gpiod_get_value(cec->v5_gpio);

 if (is_high == cec->v5_is_high)
  return IRQ_HANDLED;
 cec->v5_ts = ktime_get();
 cec->v5_is_high = is_high;
 return IRQ_WAKE_THREAD;
}
