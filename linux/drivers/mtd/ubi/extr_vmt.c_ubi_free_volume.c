
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {size_t vol_id; int dev; int cdev; } ;
struct ubi_device {int ** volumes; } ;


 int cdev_del (int *) ;
 int dbg_gen (char*,size_t) ;
 int device_unregister (int *) ;

void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol)
{
 dbg_gen("free volume %d", vol->vol_id);

 ubi->volumes[vol->vol_id] = ((void*)0);
 cdev_del(&vol->cdev);
 device_unregister(&vol->dev);
}
