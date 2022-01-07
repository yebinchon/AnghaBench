
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vtbl_record {int upd_marker; } ;
struct ubi_volume {size_t vol_id; int upd_marker; } ;
struct ubi_device {int device_mutex; struct ubi_vtbl_record* vtbl; } ;


 int dbg_gen (char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubi_assert (int) ;
 int ubi_change_vtbl_record (struct ubi_device*,size_t,struct ubi_vtbl_record*) ;

__attribute__((used)) static int set_update_marker(struct ubi_device *ubi, struct ubi_volume *vol)
{
 int err;
 struct ubi_vtbl_record vtbl_rec;

 dbg_gen("set update marker for volume %d", vol->vol_id);

 if (vol->upd_marker) {
  ubi_assert(ubi->vtbl[vol->vol_id].upd_marker);
  dbg_gen("already set");
  return 0;
 }

 vtbl_rec = ubi->vtbl[vol->vol_id];
 vtbl_rec.upd_marker = 1;

 mutex_lock(&ubi->device_mutex);
 err = ubi_change_vtbl_record(ubi, vol->vol_id, &vtbl_rec);
 vol->upd_marker = 1;
 mutex_unlock(&ubi->device_mutex);
 return err;
}
