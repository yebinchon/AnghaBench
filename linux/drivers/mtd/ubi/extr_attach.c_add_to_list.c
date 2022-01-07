
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct ubi_attach_info {int alien_peb_count; struct list_head alien; struct list_head erase; struct list_head free; } ;
struct TYPE_2__ {int list; } ;
struct ubi_ainf_peb {int vol_id; int lnum; TYPE_1__ u; } ;


 int BUG () ;
 int ENOMEM ;
 int dbg_bld (char*,int,int) ;
 int list_add (int *,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct ubi_ainf_peb* ubi_alloc_aeb (struct ubi_attach_info*,int,int) ;

__attribute__((used)) static int add_to_list(struct ubi_attach_info *ai, int pnum, int vol_id,
         int lnum, int ec, int to_head, struct list_head *list)
{
 struct ubi_ainf_peb *aeb;

 if (list == &ai->free) {
  dbg_bld("add to free: PEB %d, EC %d", pnum, ec);
 } else if (list == &ai->erase) {
  dbg_bld("add to erase: PEB %d, EC %d", pnum, ec);
 } else if (list == &ai->alien) {
  dbg_bld("add to alien: PEB %d, EC %d", pnum, ec);
  ai->alien_peb_count += 1;
 } else
  BUG();

 aeb = ubi_alloc_aeb(ai, pnum, ec);
 if (!aeb)
  return -ENOMEM;

 aeb->vol_id = vol_id;
 aeb->lnum = lnum;
 if (to_head)
  list_add(&aeb->u.list, list);
 else
  list_add_tail(&aeb->u.list, list);
 return 0;
}
