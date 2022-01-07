
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bttv_ir {int active; int last_bit; int code; int timer; int base_time; } ;
struct bttv {int c; struct bttv_ir* remote; } ;
typedef int ktime_t ;


 int USEC_PER_SEC ;
 int bttv_gpio_read (int *) ;
 int bttv_gpio_write (int *,int) ;
 int dprintk (char*,int,char*) ;
 int ir_rc5_remote_gap ;
 unsigned long jiffies ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static int bttv_rc5_irq(struct bttv *btv)
{
 struct bttv_ir *ir = btv->remote;
 ktime_t tv;
 u32 gpio;
 u32 gap;
 unsigned long current_jiffies;


 gpio = bttv_gpio_read(&btv->c);


 current_jiffies = jiffies;
 tv = ktime_get();

 gap = ktime_to_us(ktime_sub(tv, ir->base_time));

 if (gap > USEC_PER_SEC) {
  gap = 200000;
 }

 dprintk("RC5 IRQ: gap %d us for %s\n",
  gap, (gpio & 0x20) ? "mark" : "space");


 if (!(gpio & 0x20))
  return 0;


 if (ir->active) {


  if (ir->last_bit < 28) {
   ir->last_bit = (gap - ir_rc5_remote_gap / 2) /
       ir_rc5_remote_gap;
   ir->code |= 1 << ir->last_bit;
  }

 } else {
  ir->active = 1;
  ir->code = 0;
  ir->base_time = tv;
  ir->last_bit = 0;

  mod_timer(&ir->timer, current_jiffies + msecs_to_jiffies(30));
 }


 bttv_gpio_write(&btv->c, gpio & ~(1 << 4));
 bttv_gpio_write(&btv->c, gpio | (1 << 4));
 return 1;
}
