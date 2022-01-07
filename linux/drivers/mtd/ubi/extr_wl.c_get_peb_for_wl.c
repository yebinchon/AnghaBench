
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rb; } ;
struct ubi_wl_entry {TYPE_1__ u; } ;
struct ubi_device {scalar_t__ free_count; int free; } ;


 int WL_FREE_MAX_DIFF ;
 struct ubi_wl_entry* find_wl_entry (struct ubi_device*,int *,int ) ;
 int rb_erase (int *,int *) ;
 int self_check_in_wl_tree (struct ubi_device*,struct ubi_wl_entry*,int *) ;
 int ubi_assert (int) ;

__attribute__((used)) static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
{
 struct ubi_wl_entry *e;

 e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
 self_check_in_wl_tree(ubi, e, &ubi->free);
 ubi->free_count--;
 ubi_assert(ubi->free_count >= 0);
 rb_erase(&e->u.rb, &ubi->free);

 return e;
}
