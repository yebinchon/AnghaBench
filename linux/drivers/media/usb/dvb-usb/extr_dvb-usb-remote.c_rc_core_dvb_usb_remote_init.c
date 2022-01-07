
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * parent; } ;
struct rc_dev {int scancode_mask; struct dvb_usb_device* priv; TYPE_2__ dev; int input_phys; int device_name; int input_id; int allowed_protocols; int change_protocol; int map_name; int driver_name; } ;
struct TYPE_9__ {int rc_interval; scalar_t__ bulk_mode; int rc_query; int scancode_mask; int allowed_protos; int change_protocol; int rc_codes; int module_name; int driver_type; } ;
struct TYPE_10__ {TYPE_3__ core; } ;
struct TYPE_11__ {TYPE_4__ rc; } ;
struct dvb_usb_device {int rc_query_work; TYPE_5__ props; struct rc_dev* rc_dev; int * input_dev; TYPE_6__* udev; int rc_phys; TYPE_1__* desc; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_7__ {int name; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int dvb_usb_read_remote_control ;
 int info (char*,int) ;
 int msecs_to_jiffies (int) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int schedule_delayed_work (int *,int ) ;
 int usb_to_input_id (TYPE_6__*,int *) ;

__attribute__((used)) static int rc_core_dvb_usb_remote_init(struct dvb_usb_device *d)
{
 int err, rc_interval;
 struct rc_dev *dev;

 dev = rc_allocate_device(d->props.rc.core.driver_type);
 if (!dev)
  return -ENOMEM;

 dev->driver_name = d->props.rc.core.module_name;
 dev->map_name = d->props.rc.core.rc_codes;
 dev->change_protocol = d->props.rc.core.change_protocol;
 dev->allowed_protocols = d->props.rc.core.allowed_protos;
 usb_to_input_id(d->udev, &dev->input_id);
 dev->device_name = d->desc->name;
 dev->input_phys = d->rc_phys;
 dev->dev.parent = &d->udev->dev;
 dev->priv = d;
 dev->scancode_mask = d->props.rc.core.scancode_mask;

 err = rc_register_device(dev);
 if (err < 0) {
  rc_free_device(dev);
  return err;
 }

 d->input_dev = ((void*)0);
 d->rc_dev = dev;

 if (!d->props.rc.core.rc_query || d->props.rc.core.bulk_mode)
  return 0;


 INIT_DELAYED_WORK(&d->rc_query_work, dvb_usb_read_remote_control);

 rc_interval = d->props.rc.core.rc_interval;

 info("schedule remote query interval to %d msecs.", rc_interval);
 schedule_delayed_work(&d->rc_query_work,
         msecs_to_jiffies(rc_interval));

 return 0;
}
