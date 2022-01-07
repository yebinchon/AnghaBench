
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb; } ;
struct ubi_wl_entry {int ec; int pnum; TYPE_1__ u; } ;
struct ubi_device {int free_count; int free; } ;


 int dbg_wl (char*,int ,int ) ;
 struct ubi_wl_entry* find_mean_wl_entry (struct ubi_device*,int *) ;
 int rb_erase (int *,int *) ;
 int self_check_in_wl_tree (struct ubi_device*,struct ubi_wl_entry*,int *) ;
 int ubi_err (struct ubi_device*,char*) ;

__attribute__((used)) static struct ubi_wl_entry *wl_get_wle(struct ubi_device *ubi)
{
 struct ubi_wl_entry *e;

 e = find_mean_wl_entry(ubi, &ubi->free);
 if (!e) {
  ubi_err(ubi, "no free eraseblocks");
  return ((void*)0);
 }

 self_check_in_wl_tree(ubi, e, &ubi->free);





 rb_erase(&e->u.rb, &ubi->free);
 ubi->free_count--;
 dbg_wl("PEB %d EC %d", e->pnum, e->ec);

 return e;
}
