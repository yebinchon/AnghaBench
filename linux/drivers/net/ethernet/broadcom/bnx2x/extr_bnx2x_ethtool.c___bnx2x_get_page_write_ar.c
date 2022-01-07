
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int const* page_write_regs_e2 ;
 int const* page_write_regs_e3 ;

__attribute__((used)) static const u32 *__bnx2x_get_page_write_ar(struct bnx2x *bp)
{
 if (CHIP_IS_E2(bp))
  return page_write_regs_e2;
 else if (CHIP_IS_E3(bp))
  return page_write_regs_e3;
 else
  return ((void*)0);
}
