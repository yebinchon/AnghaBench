
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {int vol_id; int lnum; int torture; struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int pnum; int ec; } ;
struct ubi_device {int beb_rsvd_pebs; scalar_t__ avail_pebs; int bad_peb_count; int good_peb_count; int volumes_lock; int bad_allowed; int wl_lock; int free_count; int free; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EIO ;
 int ENOMEM ;
 int dbg_wl (char*,int,int ,int,int) ;
 int ensure_wear_leveling (struct ubi_device*,int) ;
 int schedule_erase (struct ubi_device*,struct ubi_wl_entry*,int,int,int ,int) ;
 int serve_prot_queue (struct ubi_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_erase (struct ubi_device*,struct ubi_wl_entry*,int ) ;
 int ubi_calculate_reserved (struct ubi_device*) ;
 int ubi_err (struct ubi_device*,char*,...) ;
 int ubi_io_mark_bad (struct ubi_device*,int) ;
 int ubi_msg (struct ubi_device*,char*,int) ;
 int ubi_ro_mode (struct ubi_device*) ;
 int ubi_warn (struct ubi_device*,char*) ;
 int wl_entry_destroy (struct ubi_device*,struct ubi_wl_entry*) ;
 int wl_tree_add (struct ubi_wl_entry*,int *) ;

__attribute__((used)) static int __erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk)
{
 struct ubi_wl_entry *e = wl_wrk->e;
 int pnum = e->pnum;
 int vol_id = wl_wrk->vol_id;
 int lnum = wl_wrk->lnum;
 int err, available_consumed = 0;

 dbg_wl("erase PEB %d EC %d LEB %d:%d",
        pnum, e->ec, wl_wrk->vol_id, wl_wrk->lnum);

 err = sync_erase(ubi, e, wl_wrk->torture);
 if (!err) {
  spin_lock(&ubi->wl_lock);
  wl_tree_add(e, &ubi->free);
  ubi->free_count++;
  spin_unlock(&ubi->wl_lock);





  serve_prot_queue(ubi);


  err = ensure_wear_leveling(ubi, 1);
  return err;
 }

 ubi_err(ubi, "failed to erase PEB %d, error %d", pnum, err);

 if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
     err == -EBUSY) {
  int err1;


  err1 = schedule_erase(ubi, e, vol_id, lnum, 0, 0);
  if (err1) {
   wl_entry_destroy(ubi, e);
   err = err1;
   goto out_ro;
  }
  return err;
 }

 wl_entry_destroy(ubi, e);
 if (err != -EIO)





  goto out_ro;



 if (!ubi->bad_allowed) {
  ubi_err(ubi, "bad physical eraseblock %d detected", pnum);
  goto out_ro;
 }

 spin_lock(&ubi->volumes_lock);
 if (ubi->beb_rsvd_pebs == 0) {
  if (ubi->avail_pebs == 0) {
   spin_unlock(&ubi->volumes_lock);
   ubi_err(ubi, "no reserved/available physical eraseblocks");
   goto out_ro;
  }
  ubi->avail_pebs -= 1;
  available_consumed = 1;
 }
 spin_unlock(&ubi->volumes_lock);

 ubi_msg(ubi, "mark PEB %d as bad", pnum);
 err = ubi_io_mark_bad(ubi, pnum);
 if (err)
  goto out_ro;

 spin_lock(&ubi->volumes_lock);
 if (ubi->beb_rsvd_pebs > 0) {
  if (available_consumed) {




   ubi->avail_pebs += 1;
   available_consumed = 0;
  }
  ubi->beb_rsvd_pebs -= 1;
 }
 ubi->bad_peb_count += 1;
 ubi->good_peb_count -= 1;
 ubi_calculate_reserved(ubi);
 if (available_consumed)
  ubi_warn(ubi, "no PEBs in the reserved pool, used an available PEB");
 else if (ubi->beb_rsvd_pebs)
  ubi_msg(ubi, "%d PEBs left in the reserve",
   ubi->beb_rsvd_pebs);
 else
  ubi_warn(ubi, "last PEB from the reserve was used");
 spin_unlock(&ubi->volumes_lock);

 return err;

out_ro:
 if (available_consumed) {
  spin_lock(&ubi->volumes_lock);
  ubi->avail_pebs += 1;
  spin_unlock(&ubi->volumes_lock);
 }
 ubi_ro_mode(ubi);
 return err;
}
