
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int ref_count; int dev; } ;


 int put_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_devices_lock ;

void ubi_put_device(struct ubi_device *ubi)
{
 spin_lock(&ubi_devices_lock);
 ubi->ref_count -= 1;
 put_device(&ubi->dev);
 spin_unlock(&ubi_devices_lock);
}
