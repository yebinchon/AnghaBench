
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {int dummy; } ;
struct ubi_volume {int name_len; int name; } ;
struct ubi_device {int vtbl_slots; int volumes_lock; struct ubi_volume** volumes; } ;


 int EINVAL ;
 int ENODEV ;
 struct ubi_volume_desc* ERR_PTR (int ) ;
 int UBI_MAX_DEVICES ;
 int UBI_VOL_NAME_MAX ;
 int dbg_gen (char*,int,char const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (char const*,int ) ;
 int strnlen (char const*,int) ;
 struct ubi_device* ubi_get_device (int) ;
 struct ubi_volume_desc* ubi_open_volume (int,int,int) ;
 int ubi_put_device (struct ubi_device*) ;

struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num, const char *name,
        int mode)
{
 int i, vol_id = -1, len;
 struct ubi_device *ubi;
 struct ubi_volume_desc *ret;

 dbg_gen("open device %d, volume %s, mode %d", ubi_num, name, mode);

 if (!name)
  return ERR_PTR(-EINVAL);

 len = strnlen(name, UBI_VOL_NAME_MAX + 1);
 if (len > UBI_VOL_NAME_MAX)
  return ERR_PTR(-EINVAL);

 if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
  return ERR_PTR(-EINVAL);

 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return ERR_PTR(-ENODEV);

 spin_lock(&ubi->volumes_lock);

 for (i = 0; i < ubi->vtbl_slots; i++) {
  struct ubi_volume *vol = ubi->volumes[i];

  if (vol && len == vol->name_len && !strcmp(name, vol->name)) {
   vol_id = i;
   break;
  }
 }
 spin_unlock(&ubi->volumes_lock);

 if (vol_id >= 0)
  ret = ubi_open_volume(ubi_num, vol_id, mode);
 else
  ret = ERR_PTR(-ENODEV);





 ubi_put_device(ubi);
 return ret;
}
