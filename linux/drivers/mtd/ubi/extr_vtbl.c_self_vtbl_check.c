
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int vtbl; } ;


 int BUG () ;
 int ubi_dbg_chk_gen (struct ubi_device const*) ;
 int ubi_err (struct ubi_device const*,char*) ;
 scalar_t__ vtbl_check (struct ubi_device const*,int ) ;

__attribute__((used)) static void self_vtbl_check(const struct ubi_device *ubi)
{
 if (!ubi_dbg_chk_gen(ubi))
  return;

 if (vtbl_check(ubi, ubi->vtbl)) {
  ubi_err(ubi, "self-check failed");
  BUG();
 }
}
