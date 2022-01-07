
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_wl_entry {int pnum; } ;
struct TYPE_2__ {int rb_node; } ;
struct ubi_device {scalar_t__ works_count; scalar_t__ vid_hdr_aloffset; scalar_t__ peb_size; int wl_lock; int fm_eba_sem; int works; TYPE_1__ free; } ;


 int ENOSPC ;
 int down_read (int *) ;
 int list_empty (int *) ;
 int produce_free_peb (struct ubi_device*) ;
 int prot_queue_add (struct ubi_device*,struct ubi_wl_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int ) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_self_check_all_ff (struct ubi_device*,int,scalar_t__,scalar_t__) ;
 int up_read (int *) ;
 struct ubi_wl_entry* wl_get_wle (struct ubi_device*) ;

int ubi_wl_get_peb(struct ubi_device *ubi)
{
 int err;
 struct ubi_wl_entry *e;

retry:
 down_read(&ubi->fm_eba_sem);
 spin_lock(&ubi->wl_lock);
 if (!ubi->free.rb_node) {
  if (ubi->works_count == 0) {
   ubi_err(ubi, "no free eraseblocks");
   ubi_assert(list_empty(&ubi->works));
   spin_unlock(&ubi->wl_lock);
   return -ENOSPC;
  }

  err = produce_free_peb(ubi);
  if (err < 0) {
   spin_unlock(&ubi->wl_lock);
   return err;
  }
  spin_unlock(&ubi->wl_lock);
  up_read(&ubi->fm_eba_sem);
  goto retry;

 }
 e = wl_get_wle(ubi);
 prot_queue_add(ubi, e);
 spin_unlock(&ubi->wl_lock);

 err = ubi_self_check_all_ff(ubi, e->pnum, ubi->vid_hdr_aloffset,
        ubi->peb_size - ubi->vid_hdr_aloffset);
 if (err) {
  ubi_err(ubi, "new PEB %d does not contain all 0xFF bytes", e->pnum);
  return err;
 }

 return e->pnum;
}
