
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {scalar_t__ reserved_pebs; } ;
struct ubi_device {scalar_t__ vtbl_slots; struct ubi_volume** volumes; } ;
struct ubi_attach_info {scalar_t__ vols_found; scalar_t__ highest_vol_id; } ;
struct ubi_ainf_volume {int vol_id; } ;


 int EINVAL ;
 scalar_t__ UBI_INTERNAL_VOL_START ;
 scalar_t__ UBI_INT_VOL_COUNT ;
 int check_av (struct ubi_volume*,struct ubi_ainf_volume*) ;
 int cond_resched () ;
 int ubi_assert (int) ;
 int ubi_err (struct ubi_device const*,char*,scalar_t__,...) ;
 struct ubi_ainf_volume* ubi_find_av (struct ubi_attach_info*,int) ;
 int ubi_msg (struct ubi_device const*,char*,int ) ;
 int ubi_remove_av (struct ubi_attach_info*,struct ubi_ainf_volume*) ;

__attribute__((used)) static int check_attaching_info(const struct ubi_device *ubi,
          struct ubi_attach_info *ai)
{
 int err, i;
 struct ubi_ainf_volume *av;
 struct ubi_volume *vol;

 if (ai->vols_found > UBI_INT_VOL_COUNT + ubi->vtbl_slots) {
  ubi_err(ubi, "found %d volumes while attaching, maximum is %d + %d",
   ai->vols_found, UBI_INT_VOL_COUNT, ubi->vtbl_slots);
  return -EINVAL;
 }

 if (ai->highest_vol_id >= ubi->vtbl_slots + UBI_INT_VOL_COUNT &&
     ai->highest_vol_id < UBI_INTERNAL_VOL_START) {
  ubi_err(ubi, "too large volume ID %d found",
   ai->highest_vol_id);
  return -EINVAL;
 }

 for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
  cond_resched();

  av = ubi_find_av(ai, i);
  vol = ubi->volumes[i];
  if (!vol) {
   if (av)
    ubi_remove_av(ai, av);
   continue;
  }

  if (vol->reserved_pebs == 0) {
   ubi_assert(i < ubi->vtbl_slots);

   if (!av)
    continue;
   ubi_msg(ubi, "finish volume %d removal", av->vol_id);
   ubi_remove_av(ai, av);
  } else if (av) {
   err = check_av(vol, av);
   if (err)
    return err;
  }
 }

 return 0;
}
