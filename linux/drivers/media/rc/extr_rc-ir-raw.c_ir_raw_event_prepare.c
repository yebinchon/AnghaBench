
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {int idle; TYPE_1__* raw; int change_protocol; } ;
struct TYPE_2__ {int kfifo; int edge_handle; int edge_spinlock; struct rc_dev* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_KFIFO (int ) ;
 int change_protocol ;
 int ir_raw_edge_handle ;
 TYPE_1__* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int ir_raw_event_prepare(struct rc_dev *dev)
{
 if (!dev)
  return -EINVAL;

 dev->raw = kzalloc(sizeof(*dev->raw), GFP_KERNEL);
 if (!dev->raw)
  return -ENOMEM;

 dev->raw->dev = dev;
 dev->change_protocol = change_protocol;
 dev->idle = 1;
 spin_lock_init(&dev->raw->edge_spinlock);
 timer_setup(&dev->raw->edge_handle, ir_raw_edge_handle, 0);
 INIT_KFIFO(dev->raw->kfifo);

 return 0;
}
