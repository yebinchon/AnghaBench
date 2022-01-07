
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int ec; int pnum; } ;
struct ubi_device {int dummy; } ;


 int __erase_worker (struct ubi_device*,struct ubi_work*) ;
 int dbg_wl (char*,int ,int ) ;
 int kfree (struct ubi_work*) ;
 int wl_entry_destroy (struct ubi_device*,struct ubi_wl_entry*) ;

__attribute__((used)) static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
     int shutdown)
{
 int ret;

 if (shutdown) {
  struct ubi_wl_entry *e = wl_wrk->e;

  dbg_wl("cancel erasure of PEB %d EC %d", e->pnum, e->ec);
  kfree(wl_wrk);
  wl_entry_destroy(ubi, e);
  return 0;
 }

 ret = __erase_worker(ubi, wl_wrk);
 kfree(wl_wrk);
 return ret;
}
