
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int ec; int pnum; } ;
struct ubi_device {int dummy; } ;


 int EINVAL ;
 int dump_stack () ;
 scalar_t__ in_pq (struct ubi_device const*,struct ubi_wl_entry*) ;
 int ubi_dbg_chk_gen (struct ubi_device const*) ;
 int ubi_err (struct ubi_device const*,char*,int ,int ) ;

__attribute__((used)) static int self_check_in_pq(const struct ubi_device *ubi,
       struct ubi_wl_entry *e)
{
 if (!ubi_dbg_chk_gen(ubi))
  return 0;

 if (in_pq(ubi, e))
  return 0;

 ubi_err(ubi, "self-check failed for PEB %d, EC %d, Protect queue",
  e->pnum, e->ec);
 dump_stack();
 return -EINVAL;
}
