
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devt; int release; int * parent; int class; } ;
struct rc_dev {int driver_type; int driver_name; int dev; scalar_t__ tx_ir; TYPE_1__ lirc_dev; int lirc_cdev; int lirc_fh_lock; int lirc_fh; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int RC_DEV_MAX ;


 int cdev_device_add (int *,TYPE_1__*) ;
 int cdev_init (int *,int *) ;
 int dev_info (int *,char*,int ,int,char const*,char const*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int lirc_base_dev ;
 int lirc_class ;
 int lirc_fops ;
 int lirc_ida ;
 int lirc_release_device ;
 int spin_lock_init (int *) ;

int ir_lirc_register(struct rc_dev *dev)
{
 const char *rx_type, *tx_type;
 int err, minor;

 minor = ida_simple_get(&lirc_ida, 0, RC_DEV_MAX, GFP_KERNEL);
 if (minor < 0)
  return minor;

 device_initialize(&dev->lirc_dev);
 dev->lirc_dev.class = lirc_class;
 dev->lirc_dev.parent = &dev->dev;
 dev->lirc_dev.release = lirc_release_device;
 dev->lirc_dev.devt = MKDEV(MAJOR(lirc_base_dev), minor);
 dev_set_name(&dev->lirc_dev, "lirc%d", minor);

 INIT_LIST_HEAD(&dev->lirc_fh);
 spin_lock_init(&dev->lirc_fh_lock);

 cdev_init(&dev->lirc_cdev, &lirc_fops);

 err = cdev_device_add(&dev->lirc_cdev, &dev->lirc_dev);
 if (err)
  goto out_ida;

 get_device(&dev->dev);

 switch (dev->driver_type) {
 case 128:
  rx_type = "scancode";
  break;
 case 129:
  rx_type = "raw IR";
  break;
 default:
  rx_type = "no";
  break;
 }

 if (dev->tx_ir)
  tx_type = "raw IR";
 else
  tx_type = "no";

 dev_info(&dev->dev, "lirc_dev: driver %s registered at minor = %d, %s receiver, %s transmitter",
   dev->driver_name, minor, rx_type, tx_type);

 return 0;

out_ida:
 ida_simple_remove(&lirc_ida, minor);
 return err;
}
