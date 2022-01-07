
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * class; int * type; } ;
struct TYPE_5__ {int lock; } ;
struct rc_dev {int driver_type; TYPE_4__ dev; int lock; int keylock; TYPE_1__ rc_map; int timer_repeat; int timer_keyup; int timeout; TYPE_2__* input_dev; } ;
typedef enum rc_driver_type { ____Placeholder_rc_driver_type } rc_driver_type ;
struct TYPE_6__ {int setkeycode; int getkeycode; } ;


 int GFP_KERNEL ;
 int IR_DEFAULT_TIMEOUT ;
 int RC_DRIVER_IR_RAW_TX ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int device_initialize (TYPE_4__*) ;
 TYPE_2__* input_allocate_device () ;
 int input_set_drvdata (TYPE_2__*,struct rc_dev*) ;
 int ir_getkeycode ;
 int ir_setkeycode ;
 int ir_timer_keyup ;
 int ir_timer_repeat ;
 int kfree (struct rc_dev*) ;
 struct rc_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rc_class ;
 int rc_dev_type ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct rc_dev *rc_allocate_device(enum rc_driver_type type)
{
 struct rc_dev *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 if (type != RC_DRIVER_IR_RAW_TX) {
  dev->input_dev = input_allocate_device();
  if (!dev->input_dev) {
   kfree(dev);
   return ((void*)0);
  }

  dev->input_dev->getkeycode = ir_getkeycode;
  dev->input_dev->setkeycode = ir_setkeycode;
  input_set_drvdata(dev->input_dev, dev);

  dev->timeout = IR_DEFAULT_TIMEOUT;
  timer_setup(&dev->timer_keyup, ir_timer_keyup, 0);
  timer_setup(&dev->timer_repeat, ir_timer_repeat, 0);

  spin_lock_init(&dev->rc_map.lock);
  spin_lock_init(&dev->keylock);
 }
 mutex_init(&dev->lock);

 dev->dev.type = &rc_dev_type;
 dev->dev.class = &rc_class;
 device_initialize(&dev->dev);

 dev->driver_type = type;

 __module_get(THIS_MODULE);
 return dev;
}
