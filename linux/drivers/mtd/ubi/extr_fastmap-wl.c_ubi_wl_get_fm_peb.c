
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rb; } ;
struct ubi_wl_entry {TYPE_1__ u; } ;
struct TYPE_7__ {int rb_node; } ;
struct ubi_device {int free_count; int beb_rsvd_pebs; TYPE_2__ free; } ;


 struct ubi_wl_entry* find_anchor_wl_entry (TYPE_2__*) ;
 struct ubi_wl_entry* find_mean_wl_entry (struct ubi_device*,TYPE_2__*) ;
 int rb_erase (int *,TYPE_2__*) ;
 int self_check_in_wl_tree (struct ubi_device*,struct ubi_wl_entry*,TYPE_2__*) ;

struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi, int anchor)
{
 struct ubi_wl_entry *e = ((void*)0);

 if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1))
  goto out;

 if (anchor)
  e = find_anchor_wl_entry(&ubi->free);
 else
  e = find_mean_wl_entry(ubi, &ubi->free);

 if (!e)
  goto out;

 self_check_in_wl_tree(ubi, e, &ubi->free);



 rb_erase(&e->u.rb, &ubi->free);
 ubi->free_count--;
out:
 return e;
}
