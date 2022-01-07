
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct ubi_wl_entry {int pnum; TYPE_1__ u; } ;
struct ubi_device {struct ubi_wl_entry** lookuptbl; } ;


 int ENODEV ;
 int dbg_wl (char*,int ) ;
 int list_del (int *) ;
 scalar_t__ self_check_in_pq (struct ubi_device*,struct ubi_wl_entry*) ;

__attribute__((used)) static int prot_queue_del(struct ubi_device *ubi, int pnum)
{
 struct ubi_wl_entry *e;

 e = ubi->lookuptbl[pnum];
 if (!e)
  return -ENODEV;

 if (self_check_in_pq(ubi, e))
  return -ENODEV;

 list_del(&e->u.list);
 dbg_wl("deleted PEB %d from the protection queue", e->pnum);
 return 0;
}
