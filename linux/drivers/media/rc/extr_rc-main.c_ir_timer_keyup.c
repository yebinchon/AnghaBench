
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rc_dev {int keylock; int keyup_jiffies; } ;


 struct rc_dev* dev ;
 struct rc_dev* from_timer (int ,struct timer_list*,int ) ;
 int ir_do_keyup (struct rc_dev*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_before_eq_jiffies (int ) ;
 int timer_keyup ;

__attribute__((used)) static void ir_timer_keyup(struct timer_list *t)
{
 struct rc_dev *dev = from_timer(dev, t, timer_keyup);
 unsigned long flags;
 spin_lock_irqsave(&dev->keylock, flags);
 if (time_is_before_eq_jiffies(dev->keyup_jiffies))
  ir_do_keyup(dev, 1);
 spin_unlock_irqrestore(&dev->keylock, flags);
}
