
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {scalar_t__ driver_type; int registered; scalar_t__ allowed_protocols; int managed_alloc; int minor; int dev; int lock; int (* close ) (struct rc_dev*) ;scalar_t__ users; int timer_repeat; int timer_keyup; } ;


 scalar_t__ RC_DRIVER_IR_RAW ;
 scalar_t__ RC_PROTO_BIT_CEC ;
 int del_timer_sync (int *) ;
 int device_del (int *) ;
 int ida_simple_remove (int *,int ) ;
 int ir_lirc_unregister (struct rc_dev*) ;
 int ir_raw_event_unregister (struct rc_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_free_rx_device (struct rc_dev*) ;
 int rc_ida ;
 int stub1 (struct rc_dev*) ;

void rc_unregister_device(struct rc_dev *dev)
{
 if (!dev)
  return;

 if (dev->driver_type == RC_DRIVER_IR_RAW)
  ir_raw_event_unregister(dev);

 del_timer_sync(&dev->timer_keyup);
 del_timer_sync(&dev->timer_repeat);

 rc_free_rx_device(dev);

 mutex_lock(&dev->lock);
 if (dev->users && dev->close)
  dev->close(dev);
 dev->registered = 0;
 mutex_unlock(&dev->lock);





 if (dev->allowed_protocols != RC_PROTO_BIT_CEC)
  ir_lirc_unregister(dev);

 device_del(&dev->dev);

 ida_simple_remove(&rc_ida, dev->minor);

 if (!dev->managed_alloc)
  rc_free_device(dev);
}
