
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rc_dev {scalar_t__ timeout; TYPE_1__* raw; } ;
struct ir_raw_event_ctrl {struct rc_dev* dev; } ;
struct ir_raw_event {int timeout; scalar_t__ duration; } ;
typedef int ktime_t ;
struct TYPE_2__ {int edge_spinlock; int edge_handle; int last_event; } ;


 int edge_handle ;
 struct ir_raw_event_ctrl* from_timer (int ,struct timer_list*,int ) ;
 int ir_raw_event_handle (struct rc_dev*) ;
 int ir_raw_event_store (struct rc_dev*,struct ir_raw_event*) ;
 scalar_t__ jiffies ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ nsecs_to_jiffies (scalar_t__) ;
 struct ir_raw_event_ctrl* raw ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ir_raw_edge_handle(struct timer_list *t)
{
 struct ir_raw_event_ctrl *raw = from_timer(raw, t, edge_handle);
 struct rc_dev *dev = raw->dev;
 unsigned long flags;
 ktime_t interval;

 spin_lock_irqsave(&dev->raw->edge_spinlock, flags);
 interval = ktime_sub(ktime_get(), dev->raw->last_event);
 if (ktime_to_ns(interval) >= dev->timeout) {
  struct ir_raw_event ev = {
   .timeout = 1,
   .duration = ktime_to_ns(interval)
  };

  ir_raw_event_store(dev, &ev);
 } else {
  mod_timer(&dev->raw->edge_handle,
     jiffies + nsecs_to_jiffies(dev->timeout -
           ktime_to_ns(interval)));
 }
 spin_unlock_irqrestore(&dev->raw->edge_spinlock, flags);

 ir_raw_event_handle(dev);
}
