
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ubi_device {scalar_t__ vtbl_slots; TYPE_1__ cdev; int dev; } ;


 int cdev_device_del (TYPE_1__*,int *) ;
 int kill_volumes (struct ubi_device*) ;
 int unregister_chrdev_region (int ,scalar_t__) ;

__attribute__((used)) static void uif_close(struct ubi_device *ubi)
{
 kill_volumes(ubi);
 cdev_device_del(&ubi->cdev, &ubi->dev);
 unregister_chrdev_region(ubi->cdev.dev, ubi->vtbl_slots + 1);
}
