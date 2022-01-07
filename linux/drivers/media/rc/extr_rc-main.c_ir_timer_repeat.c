
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rc_dev {int keylock; int timer_repeat; int last_keycode; scalar_t__ keypressed; struct input_dev* input_dev; } ;
struct input_dev {scalar_t__* rep; } ;


 int EV_KEY ;
 size_t REP_PERIOD ;
 struct rc_dev* dev ;
 struct rc_dev* from_timer (int ,struct timer_list*,int ) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_repeat ;

__attribute__((used)) static void ir_timer_repeat(struct timer_list *t)
{
 struct rc_dev *dev = from_timer(dev, t, timer_repeat);
 struct input_dev *input = dev->input_dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->keylock, flags);
 if (dev->keypressed) {
  input_event(input, EV_KEY, dev->last_keycode, 2);
  input_sync(input);
  if (input->rep[REP_PERIOD])
   mod_timer(&dev->timer_repeat, jiffies +
      msecs_to_jiffies(input->rep[REP_PERIOD]));
 }
 spin_unlock_irqrestore(&dev->keylock, flags);
}
