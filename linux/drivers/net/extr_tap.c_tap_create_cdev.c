
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct cdev {struct module* owner; } ;
typedef int dev_t ;


 int TAP_NUM_DEVS ;
 int alloc_chrdev_region (int *,int ,int ,char const*) ;
 int cdev_add (struct cdev*,int ,int ) ;
 int cdev_del (struct cdev*) ;
 int cdev_init (struct cdev*,int *) ;
 int tap_fops ;
 int tap_list_add (int ,char const*) ;
 int unregister_chrdev_region (int ,int ) ;

int tap_create_cdev(struct cdev *tap_cdev, dev_t *tap_major,
      const char *device_name, struct module *module)
{
 int err;

 err = alloc_chrdev_region(tap_major, 0, TAP_NUM_DEVS, device_name);
 if (err)
  goto out1;

 cdev_init(tap_cdev, &tap_fops);
 tap_cdev->owner = module;
 err = cdev_add(tap_cdev, *tap_major, TAP_NUM_DEVS);
 if (err)
  goto out2;

 err = tap_list_add(*tap_major, device_name);
 if (err)
  goto out3;

 return 0;

out3:
 cdev_del(tap_cdev);
out2:
 unregister_chrdev_region(*tap_major, TAP_NUM_DEVS);
out1:
 return err;
}
