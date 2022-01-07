
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {scalar_t__ allowed_protocols; int keylock; scalar_t__ keyup_jiffies; int timer_keyup; scalar_t__ keypressed; int input_dev; int last_scancode; int last_toggle; int last_keycode; int last_protocol; int timeout; } ;
struct lirc_scancode {int flags; int keycode; int rc_proto; int scancode; } ;


 int EV_MSC ;
 int KEY_RESERVED ;
 int LIRC_SCANCODE_FLAG_REPEAT ;
 int LIRC_SCANCODE_FLAG_TOGGLE ;
 int MSC_SCAN ;
 scalar_t__ RC_PROTO_BIT_CEC ;
 int input_event (int ,int ,int ,int ) ;
 int input_sync (int ) ;
 int ir_lirc_scancode_event (struct rc_dev*,struct lirc_scancode*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 unsigned int msecs_to_jiffies (int ) ;
 unsigned int nsecs_to_jiffies (int ) ;
 int repeat_period (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rc_repeat(struct rc_dev *dev)
{
 unsigned long flags;
 unsigned int timeout = nsecs_to_jiffies(dev->timeout) +
  msecs_to_jiffies(repeat_period(dev->last_protocol));
 struct lirc_scancode sc = {
  .scancode = dev->last_scancode, .rc_proto = dev->last_protocol,
  .keycode = dev->keypressed ? dev->last_keycode : KEY_RESERVED,
  .flags = LIRC_SCANCODE_FLAG_REPEAT |
    (dev->last_toggle ? LIRC_SCANCODE_FLAG_TOGGLE : 0)
 };

 if (dev->allowed_protocols != RC_PROTO_BIT_CEC)
  ir_lirc_scancode_event(dev, &sc);

 spin_lock_irqsave(&dev->keylock, flags);

 input_event(dev->input_dev, EV_MSC, MSC_SCAN, dev->last_scancode);
 input_sync(dev->input_dev);

 if (dev->keypressed) {
  dev->keyup_jiffies = jiffies + timeout;
  mod_timer(&dev->timer_keyup, dev->keyup_jiffies);
 }

 spin_unlock_irqrestore(&dev->keylock, flags);
}
