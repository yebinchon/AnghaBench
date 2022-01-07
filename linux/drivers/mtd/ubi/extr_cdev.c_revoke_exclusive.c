
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int readers; int writers; int metaonly; int exclusive; TYPE_1__* ubi; } ;
struct TYPE_2__ {int volumes_lock; } ;


 int UBI_EXCLUSIVE ;
 int UBI_METAONLY ;
 int UBI_READONLY ;
 int UBI_READWRITE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;

__attribute__((used)) static void revoke_exclusive(struct ubi_volume_desc *desc, int mode)
{
 struct ubi_volume *vol = desc->vol;

 spin_lock(&vol->ubi->volumes_lock);
 ubi_assert(vol->readers == 0 && vol->writers == 0 && vol->metaonly == 0);
 ubi_assert(vol->exclusive == 1 && desc->mode == UBI_EXCLUSIVE);
 vol->exclusive = 0;
 if (mode == UBI_READONLY)
  vol->readers = 1;
 else if (mode == UBI_READWRITE)
  vol->writers = 1;
 else if (mode == UBI_METAONLY)
  vol->metaonly = 1;
 else
  vol->exclusive = 1;
 spin_unlock(&vol->ubi->volumes_lock);

 desc->mode = mode;
}
