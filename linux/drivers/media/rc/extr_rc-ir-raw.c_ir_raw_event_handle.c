
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct TYPE_2__ {int thread; } ;


 int wake_up_process (int ) ;

void ir_raw_event_handle(struct rc_dev *dev)
{
 if (!dev->raw || !dev->raw->thread)
  return;

 wake_up_process(dev->raw->thread);
}
