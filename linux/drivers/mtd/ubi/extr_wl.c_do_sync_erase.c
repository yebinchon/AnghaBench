
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {int vol_id; int lnum; int torture; struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int pnum; } ;
struct ubi_device {int dummy; } ;


 int __erase_worker (struct ubi_device*,struct ubi_work*) ;
 int dbg_wl (char*,int ) ;

__attribute__((used)) static int do_sync_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
    int vol_id, int lnum, int torture)
{
 struct ubi_work wl_wrk;

 dbg_wl("sync erase of PEB %i", e->pnum);

 wl_wrk.e = e;
 wl_wrk.vol_id = vol_id;
 wl_wrk.lnum = lnum;
 wl_wrk.torture = torture;

 return __erase_worker(ubi, &wl_wrk);
}
