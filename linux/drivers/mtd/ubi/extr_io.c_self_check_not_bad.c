
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int dummy; } ;


 int EINVAL ;
 int dump_stack () ;
 int ubi_dbg_chk_io (struct ubi_device const*) ;
 int ubi_err (struct ubi_device const*,char*,int) ;
 int ubi_io_is_bad (struct ubi_device const*,int) ;

__attribute__((used)) static int self_check_not_bad(const struct ubi_device *ubi, int pnum)
{
 int err;

 if (!ubi_dbg_chk_io(ubi))
  return 0;

 err = ubi_io_is_bad(ubi, pnum);
 if (!err)
  return err;

 ubi_err(ubi, "self-check failed for PEB %d", pnum);
 dump_stack();
 return err > 0 ? -EINVAL : err;
}
