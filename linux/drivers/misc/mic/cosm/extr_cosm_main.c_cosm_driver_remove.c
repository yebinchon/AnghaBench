
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {int bootmode; int ramdisk; int firmware; int cmdline; int reset_trigger_work; int index; int state_sysfs; } ;


 int MKDEV (int ,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cosm_delete_debug_dir (struct cosm_device*) ;
 int cosm_scif_exit () ;
 int cosm_stop (struct cosm_device*,int) ;
 int device_destroy (int ,int ) ;
 int flush_work (int *) ;
 int g_cosm_class ;
 int g_num_dev ;
 int kfree (int ) ;
 int sysfs_put (int ) ;

__attribute__((used)) static void cosm_driver_remove(struct cosm_device *cdev)
{
 cosm_delete_debug_dir(cdev);
 sysfs_put(cdev->state_sysfs);
 device_destroy(g_cosm_class, MKDEV(0, cdev->index));
 flush_work(&cdev->reset_trigger_work);
 cosm_stop(cdev, 0);
 if (atomic_dec_and_test(&g_num_dev))
  cosm_scif_exit();


 kfree(cdev->cmdline);
 kfree(cdev->firmware);
 kfree(cdev->ramdisk);
 kfree(cdev->bootmode);
}
