
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubi_volume {int vol_id; TYPE_2__* eba_tbl; } ;
struct ubi_device {int fm_eba_sem; scalar_t__ ro_mode; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;


 int EROFS ;
 int UBI_LEB_UNMAPPED ;
 int dbg_eba (char*,int,int,int) ;
 int down_read (int *) ;
 int leb_write_lock (struct ubi_device*,int,int) ;
 int leb_write_unlock (struct ubi_device*,int,int) ;
 int ubi_wl_put_peb (struct ubi_device*,int,int,int,int ) ;
 int up_read (int *) ;

int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
        int lnum)
{
 int err, pnum, vol_id = vol->vol_id;

 if (ubi->ro_mode)
  return -EROFS;

 err = leb_write_lock(ubi, vol_id, lnum);
 if (err)
  return err;

 pnum = vol->eba_tbl->entries[lnum].pnum;
 if (pnum < 0)

  goto out_unlock;

 dbg_eba("erase LEB %d:%d, PEB %d", vol_id, lnum, pnum);

 down_read(&ubi->fm_eba_sem);
 vol->eba_tbl->entries[lnum].pnum = UBI_LEB_UNMAPPED;
 up_read(&ubi->fm_eba_sem);
 err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 0);

out_unlock:
 leb_write_unlock(ubi, vol_id, lnum);
 return err;
}
