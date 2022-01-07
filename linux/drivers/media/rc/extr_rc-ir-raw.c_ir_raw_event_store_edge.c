
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct ir_raw_event {int pulse; int duration; } ;
typedef int ktime_t ;
struct TYPE_2__ {int last_event; } ;


 int EINVAL ;
 int ir_raw_event_store_with_timeout (struct rc_dev*,struct ir_raw_event*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;

int ir_raw_event_store_edge(struct rc_dev *dev, bool pulse)
{
 ktime_t now;
 struct ir_raw_event ev = {};

 if (!dev->raw)
  return -EINVAL;

 now = ktime_get();
 ev.duration = ktime_to_ns(ktime_sub(now, dev->raw->last_event));
 ev.pulse = !pulse;

 return ir_raw_event_store_with_timeout(dev, &ev);
}
