
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int readers; int writers; int exclusive; int metaonly; TYPE_1__* ubi; int vol_id; } ;
struct TYPE_2__ {int volumes_lock; } ;


 int EBUSY ;
 int UBI_EXCLUSIVE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;
 int ubi_err (TYPE_1__*,char*,int,int ) ;

__attribute__((used)) static int get_exclusive(struct ubi_volume_desc *desc)
{
 int users, err;
 struct ubi_volume *vol = desc->vol;

 spin_lock(&vol->ubi->volumes_lock);
 users = vol->readers + vol->writers + vol->exclusive + vol->metaonly;
 ubi_assert(users > 0);
 if (users > 1) {
  ubi_err(vol->ubi, "%d users for volume %d", users, vol->vol_id);
  err = -EBUSY;
 } else {
  vol->readers = vol->writers = vol->metaonly = 0;
  vol->exclusive = 1;
  err = desc->mode;
  desc->mode = UBI_EXCLUSIVE;
 }
 spin_unlock(&vol->ubi->volumes_lock);

 return err;
}
