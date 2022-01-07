
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int exclusive; int readers; int writers; int metaonly; int ref_count; int checked; int corrupted; int skip_check; int dev; } ;
struct ubi_device {int vtbl_slots; int volumes_lock; int ckvol_mutex; int ubi_num; struct ubi_volume** volumes; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct ubi_volume_desc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int THIS_MODULE ;

 int UBI_MAX_DEVICES ;



 int dbg_gen (char*,int,int,int) ;
 int get_device (int *) ;
 int kfree (struct ubi_volume_desc*) ;
 struct ubi_volume_desc* kmalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;
 int ubi_check_volume (struct ubi_device*,int) ;
 int ubi_close_volume (struct ubi_volume_desc*) ;
 int ubi_err (struct ubi_device*,char*,int,int,int) ;
 struct ubi_device* ubi_get_device (int) ;
 int ubi_put_device (struct ubi_device*) ;
 int ubi_warn (struct ubi_device*,char*,int,int ) ;

struct ubi_volume_desc *ubi_open_volume(int ubi_num, int vol_id, int mode)
{
 int err;
 struct ubi_volume_desc *desc;
 struct ubi_device *ubi;
 struct ubi_volume *vol;

 dbg_gen("open device %d, volume %d, mode %d", ubi_num, vol_id, mode);

 if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
  return ERR_PTR(-EINVAL);

 if (mode != 129 && mode != 128 &&
     mode != 131 && mode != 130)
  return ERR_PTR(-EINVAL);




 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return ERR_PTR(-ENODEV);

 if (vol_id < 0 || vol_id >= ubi->vtbl_slots) {
  err = -EINVAL;
  goto out_put_ubi;
 }

 desc = kmalloc(sizeof(struct ubi_volume_desc), GFP_KERNEL);
 if (!desc) {
  err = -ENOMEM;
  goto out_put_ubi;
 }

 err = -ENODEV;
 if (!try_module_get(THIS_MODULE))
  goto out_free;

 spin_lock(&ubi->volumes_lock);
 vol = ubi->volumes[vol_id];
 if (!vol)
  goto out_unlock;

 err = -EBUSY;
 switch (mode) {
 case 129:
  if (vol->exclusive)
   goto out_unlock;
  vol->readers += 1;
  break;

 case 128:
  if (vol->exclusive || vol->writers > 0)
   goto out_unlock;
  vol->writers += 1;
  break;

 case 131:
  if (vol->exclusive || vol->writers || vol->readers ||
      vol->metaonly)
   goto out_unlock;
  vol->exclusive = 1;
  break;

 case 130:
  if (vol->metaonly || vol->exclusive)
   goto out_unlock;
  vol->metaonly = 1;
  break;
 }
 get_device(&vol->dev);
 vol->ref_count += 1;
 spin_unlock(&ubi->volumes_lock);

 desc->vol = vol;
 desc->mode = mode;

 mutex_lock(&ubi->ckvol_mutex);
 if (!vol->checked && !vol->skip_check) {

  err = ubi_check_volume(ubi, vol_id);
  if (err < 0) {
   mutex_unlock(&ubi->ckvol_mutex);
   ubi_close_volume(desc);
   return ERR_PTR(err);
  }
  if (err == 1) {
   ubi_warn(ubi, "volume %d on UBI device %d is corrupted",
     vol_id, ubi->ubi_num);
   vol->corrupted = 1;
  }
  vol->checked = 1;
 }
 mutex_unlock(&ubi->ckvol_mutex);

 return desc;

out_unlock:
 spin_unlock(&ubi->volumes_lock);
 module_put(THIS_MODULE);
out_free:
 kfree(desc);
out_put_ubi:
 ubi_err(ubi, "cannot open device %d, volume %d, error %d",
  ubi_num, vol_id, err);
 ubi_put_device(ubi);
 return ERR_PTR(err);
}
