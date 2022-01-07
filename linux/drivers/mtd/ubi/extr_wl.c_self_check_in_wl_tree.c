
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int ec; int pnum; } ;
struct ubi_device {int dummy; } ;
struct rb_root {int dummy; } ;


 int EINVAL ;
 int dump_stack () ;
 scalar_t__ in_wl_tree (struct ubi_wl_entry*,struct rb_root*) ;
 int ubi_dbg_chk_gen (struct ubi_device const*) ;
 int ubi_err (struct ubi_device const*,char*,int ,int ,struct rb_root*) ;

__attribute__((used)) static int self_check_in_wl_tree(const struct ubi_device *ubi,
     struct ubi_wl_entry *e, struct rb_root *root)
{
 if (!ubi_dbg_chk_gen(ubi))
  return 0;

 if (in_wl_tree(e, root))
  return 0;

 ubi_err(ubi, "self-check failed for PEB %d, EC %d, RB-tree %p ",
  e->pnum, e->ec, root);
 dump_stack();
 return -EINVAL;
}
