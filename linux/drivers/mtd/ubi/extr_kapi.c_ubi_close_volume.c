
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int readers; int writers; int ref_count; int dev; int metaonly; int exclusive; int vol_id; struct ubi_device* ubi; } ;
struct ubi_device {int volumes_lock; int ubi_num; } ;


 int THIS_MODULE ;




 int dbg_gen (char*,int ,int ,int) ;
 int kfree (struct ubi_volume_desc*) ;
 int module_put (int ) ;
 int put_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_put_device (struct ubi_device*) ;

void ubi_close_volume(struct ubi_volume_desc *desc)
{
 struct ubi_volume *vol = desc->vol;
 struct ubi_device *ubi = vol->ubi;

 dbg_gen("close device %d, volume %d, mode %d",
  ubi->ubi_num, vol->vol_id, desc->mode);

 spin_lock(&ubi->volumes_lock);
 switch (desc->mode) {
 case 129:
  vol->readers -= 1;
  break;
 case 128:
  vol->writers -= 1;
  break;
 case 131:
  vol->exclusive = 0;
  break;
 case 130:
  vol->metaonly = 0;
  break;
 }
 vol->ref_count -= 1;
 spin_unlock(&ubi->volumes_lock);

 kfree(desc);
 put_device(&vol->dev);
 ubi_put_device(ubi);
 module_put(THIS_MODULE);
}
