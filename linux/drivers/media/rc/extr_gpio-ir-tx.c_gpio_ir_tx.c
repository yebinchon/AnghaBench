
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct gpio_ir* priv; } ;
struct gpio_ir {int duty_cycle; int lock; int gpio; int carrier; } ;
typedef int s32 ;
typedef int ktime_t ;


 unsigned int DIV_ROUND_CLOSEST (int,int ) ;
 int NSEC_PER_SEC ;
 int gpiod_set_value (int ,int) ;
 int ktime_add_ns (int ,unsigned int) ;
 int ktime_add_us (int ,unsigned int) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int ktime_us_delta (int ,int ) ;
 int ndelay (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int gpio_ir_tx(struct rc_dev *dev, unsigned int *txbuf,
        unsigned int count)
{
 struct gpio_ir *gpio_ir = dev->priv;
 unsigned long flags;
 ktime_t edge;




 s32 delta;
 int i;
 unsigned int pulse, space;


 pulse = DIV_ROUND_CLOSEST(gpio_ir->duty_cycle * (NSEC_PER_SEC / 100),
      gpio_ir->carrier);
 space = DIV_ROUND_CLOSEST((100 - gpio_ir->duty_cycle) *
      (NSEC_PER_SEC / 100), gpio_ir->carrier);

 spin_lock_irqsave(&gpio_ir->lock, flags);

 edge = ktime_get();

 for (i = 0; i < count; i++) {
  if (i % 2) {

   edge = ktime_add_us(edge, txbuf[i]);
   delta = ktime_us_delta(edge, ktime_get());
   if (delta > 10) {
    spin_unlock_irqrestore(&gpio_ir->lock, flags);
    usleep_range(delta, delta + 10);
    spin_lock_irqsave(&gpio_ir->lock, flags);
   } else if (delta > 0) {
    udelay(delta);
   }
  } else {

   ktime_t last = ktime_add_us(edge, txbuf[i]);

   while (ktime_before(ktime_get(), last)) {
    gpiod_set_value(gpio_ir->gpio, 1);
    edge = ktime_add_ns(edge, pulse);
    delta = ktime_to_ns(ktime_sub(edge,
             ktime_get()));
    if (delta > 0)
     ndelay(delta);
    gpiod_set_value(gpio_ir->gpio, 0);
    edge = ktime_add_ns(edge, space);
    delta = ktime_to_ns(ktime_sub(edge,
             ktime_get()));
    if (delta > 0)
     ndelay(delta);
   }

   edge = last;
  }
 }

 spin_unlock_irqrestore(&gpio_ir->lock, flags);

 return count;
}
