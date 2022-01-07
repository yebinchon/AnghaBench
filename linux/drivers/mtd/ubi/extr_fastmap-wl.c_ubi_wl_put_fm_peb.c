
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int pnum; scalar_t__ ec; } ;
struct ubi_device {int peb_count; int wl_lock; struct ubi_wl_entry** lookuptbl; } ;


 int UBI_FM_DATA_VOLUME_ID ;
 int UBI_FM_SB_VOLUME_ID ;
 int dbg_wl (char*,int) ;
 int schedule_erase (struct ubi_device*,struct ubi_wl_entry*,int,int,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubi_assert (int) ;

int ubi_wl_put_fm_peb(struct ubi_device *ubi, struct ubi_wl_entry *fm_e,
        int lnum, int torture)
{
 struct ubi_wl_entry *e;
 int vol_id, pnum = fm_e->pnum;

 dbg_wl("PEB %d", pnum);

 ubi_assert(pnum >= 0);
 ubi_assert(pnum < ubi->peb_count);

 spin_lock(&ubi->wl_lock);
 e = ubi->lookuptbl[pnum];





 if (!e) {
  e = fm_e;
  ubi_assert(e->ec >= 0);
  ubi->lookuptbl[pnum] = e;
 }

 spin_unlock(&ubi->wl_lock);

 vol_id = lnum ? UBI_FM_DATA_VOLUME_ID : UBI_FM_SB_VOLUME_ID;
 return schedule_erase(ubi, e, vol_id, lnum, torture, 1);
}
