
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rc_dev {int keylock; scalar_t__ keyup_jiffies; int timer_keyup; int timeout; scalar_t__ keypressed; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int ir_do_keydown (struct rc_dev*,int,int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ nsecs_to_jiffies (int ) ;
 int rc_g_keycode_from_table (struct rc_dev*,int ) ;
 int repeat_period (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rc_keydown(struct rc_dev *dev, enum rc_proto protocol, u32 scancode,
  u8 toggle)
{
 unsigned long flags;
 u32 keycode = rc_g_keycode_from_table(dev, scancode);

 spin_lock_irqsave(&dev->keylock, flags);
 ir_do_keydown(dev, protocol, scancode, keycode, toggle);

 if (dev->keypressed) {
  dev->keyup_jiffies = jiffies + nsecs_to_jiffies(dev->timeout) +
   msecs_to_jiffies(repeat_period(protocol));
  mod_timer(&dev->timer_keyup, dev->keyup_jiffies);
 }
 spin_unlock_irqrestore(&dev->keylock, flags);
}
