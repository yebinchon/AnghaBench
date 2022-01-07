
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ubi_device {int ubi_num; TYPE_1__ cdev; } ;


 int ENODEV ;
 int MAJOR (int ) ;
 int UBI_MAX_DEVICES ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ubi_device** ubi_devices ;
 int ubi_devices_lock ;

int ubi_major2num(int major)
{
 int i, ubi_num = -ENODEV;

 spin_lock(&ubi_devices_lock);
 for (i = 0; i < UBI_MAX_DEVICES; i++) {
  struct ubi_device *ubi = ubi_devices[i];

  if (ubi && MAJOR(ubi->cdev.dev) == major) {
   ubi_num = ubi->ubi_num;
   break;
  }
 }
 spin_unlock(&ubi_devices_lock);

 return ubi_num;
}
