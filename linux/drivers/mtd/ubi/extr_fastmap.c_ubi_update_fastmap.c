
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int ec; int pnum; } ;
struct ubi_fastmap_layout {int used_blocks; struct ubi_wl_entry** e; int * to_be_tortured; } ;
struct ubi_device {int fm_size; int leb_size; int fm_protect; int work_sem; int fm_eba_sem; int wl_lock; struct ubi_fastmap_layout* fm; scalar_t__ fm_disabled; scalar_t__ ro_mode; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int UBI_FM_MAX_BLOCKS ;
 int down_write (int *) ;
 int erase_block (struct ubi_device*,int ) ;
 int invalidate_fastmap (struct ubi_device*) ;
 int kfree (struct ubi_fastmap_layout*) ;
 struct ubi_fastmap_layout* kzalloc (int,int ) ;
 int return_fm_pebs (struct ubi_device*,struct ubi_fastmap_layout*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_ensure_anchor_pebs (struct ubi_device*) ;
 int ubi_err (struct ubi_device*,char*) ;
 int ubi_refill_pools (struct ubi_device*) ;
 int ubi_ro_mode (struct ubi_device*) ;
 int ubi_warn (struct ubi_device*,char*,int) ;
 struct ubi_wl_entry* ubi_wl_get_fm_peb (struct ubi_device*,int) ;
 int ubi_wl_put_fm_peb (struct ubi_device*,struct ubi_wl_entry*,int,int ) ;
 int ubi_write_fastmap (struct ubi_device*,struct ubi_fastmap_layout*) ;
 int up_write (int *) ;

int ubi_update_fastmap(struct ubi_device *ubi)
{
 int ret, i, j;
 struct ubi_fastmap_layout *new_fm, *old_fm;
 struct ubi_wl_entry *tmp_e;

 down_write(&ubi->fm_protect);
 down_write(&ubi->work_sem);
 down_write(&ubi->fm_eba_sem);

 ubi_refill_pools(ubi);

 if (ubi->ro_mode || ubi->fm_disabled) {
  up_write(&ubi->fm_eba_sem);
  up_write(&ubi->work_sem);
  up_write(&ubi->fm_protect);
  return 0;
 }

 ret = ubi_ensure_anchor_pebs(ubi);
 if (ret) {
  up_write(&ubi->fm_eba_sem);
  up_write(&ubi->work_sem);
  up_write(&ubi->fm_protect);
  return ret;
 }

 new_fm = kzalloc(sizeof(*new_fm), GFP_KERNEL);
 if (!new_fm) {
  up_write(&ubi->fm_eba_sem);
  up_write(&ubi->work_sem);
  up_write(&ubi->fm_protect);
  return -ENOMEM;
 }

 new_fm->used_blocks = ubi->fm_size / ubi->leb_size;
 old_fm = ubi->fm;
 ubi->fm = ((void*)0);

 if (new_fm->used_blocks > UBI_FM_MAX_BLOCKS) {
  ubi_err(ubi, "fastmap too large");
  ret = -ENOSPC;
  goto err;
 }

 for (i = 1; i < new_fm->used_blocks; i++) {
  spin_lock(&ubi->wl_lock);
  tmp_e = ubi_wl_get_fm_peb(ubi, 0);
  spin_unlock(&ubi->wl_lock);

  if (!tmp_e) {
   if (old_fm && old_fm->e[i]) {
    ret = erase_block(ubi, old_fm->e[i]->pnum);
    if (ret < 0) {
     ubi_err(ubi, "could not erase old fastmap PEB");

     for (j = 1; j < i; j++) {
      ubi_wl_put_fm_peb(ubi, new_fm->e[j],
          j, 0);
      new_fm->e[j] = ((void*)0);
     }
     goto err;
    }
    new_fm->e[i] = old_fm->e[i];
    old_fm->e[i] = ((void*)0);
   } else {
    ubi_err(ubi, "could not get any free erase block");

    for (j = 1; j < i; j++) {
     ubi_wl_put_fm_peb(ubi, new_fm->e[j], j, 0);
     new_fm->e[j] = ((void*)0);
    }

    ret = -ENOSPC;
    goto err;
   }
  } else {
   new_fm->e[i] = tmp_e;

   if (old_fm && old_fm->e[i]) {
    ubi_wl_put_fm_peb(ubi, old_fm->e[i], i,
        old_fm->to_be_tortured[i]);
    old_fm->e[i] = ((void*)0);
   }
  }
 }


 if (old_fm && new_fm->used_blocks < old_fm->used_blocks) {
  for (i = new_fm->used_blocks; i < old_fm->used_blocks; i++) {
   ubi_wl_put_fm_peb(ubi, old_fm->e[i], i,
       old_fm->to_be_tortured[i]);
   old_fm->e[i] = ((void*)0);
  }
 }

 spin_lock(&ubi->wl_lock);
 tmp_e = ubi_wl_get_fm_peb(ubi, 1);
 spin_unlock(&ubi->wl_lock);

 if (old_fm) {

  if (!tmp_e) {
   ret = erase_block(ubi, old_fm->e[0]->pnum);
   if (ret < 0) {
    ubi_err(ubi, "could not erase old anchor PEB");

    for (i = 1; i < new_fm->used_blocks; i++) {
     ubi_wl_put_fm_peb(ubi, new_fm->e[i],
         i, 0);
     new_fm->e[i] = ((void*)0);
    }
    goto err;
   }
   new_fm->e[0] = old_fm->e[0];
   new_fm->e[0]->ec = ret;
   old_fm->e[0] = ((void*)0);
  } else {

   ubi_wl_put_fm_peb(ubi, old_fm->e[0], 0,
       old_fm->to_be_tortured[0]);
   new_fm->e[0] = tmp_e;
   old_fm->e[0] = ((void*)0);
  }
 } else {
  if (!tmp_e) {
   ubi_err(ubi, "could not find any anchor PEB");

   for (i = 1; i < new_fm->used_blocks; i++) {
    ubi_wl_put_fm_peb(ubi, new_fm->e[i], i, 0);
    new_fm->e[i] = ((void*)0);
   }

   ret = -ENOSPC;
   goto err;
  }
  new_fm->e[0] = tmp_e;
 }

 ret = ubi_write_fastmap(ubi, new_fm);

 if (ret)
  goto err;

out_unlock:
 up_write(&ubi->fm_eba_sem);
 up_write(&ubi->work_sem);
 up_write(&ubi->fm_protect);
 kfree(old_fm);
 return ret;

err:
 ubi_warn(ubi, "Unable to write new fastmap, err=%i", ret);

 ret = invalidate_fastmap(ubi);
 if (ret < 0) {
  ubi_err(ubi, "Unable to invalidate current fastmap!");
  ubi_ro_mode(ubi);
 } else {
  return_fm_pebs(ubi, old_fm);
  return_fm_pebs(ubi, new_fm);
  ret = 0;
 }

 kfree(new_fm);
 goto out_unlock;
}
