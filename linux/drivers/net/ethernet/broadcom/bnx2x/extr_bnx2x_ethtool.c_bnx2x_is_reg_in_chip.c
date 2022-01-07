
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_addr {int chips; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bnx2x*) ;
 int IS_E1H_REG (int ) ;
 int IS_E1_REG (int ) ;
 int IS_E2_REG (int ) ;
 int IS_E3A0_REG (int ) ;
 int IS_E3B0_REG (int ) ;

__attribute__((used)) static bool bnx2x_is_reg_in_chip(struct bnx2x *bp,
           const struct reg_addr *reg_info)
{
 if (CHIP_IS_E1(bp))
  return IS_E1_REG(reg_info->chips);
 else if (CHIP_IS_E1H(bp))
  return IS_E1H_REG(reg_info->chips);
 else if (CHIP_IS_E2(bp))
  return IS_E2_REG(reg_info->chips);
 else if (CHIP_IS_E3A0(bp))
  return IS_E3A0_REG(reg_info->chips);
 else if (CHIP_IS_E3B0(bp))
  return IS_E3B0_REG(reg_info->chips);
 else
  return 0;
}
