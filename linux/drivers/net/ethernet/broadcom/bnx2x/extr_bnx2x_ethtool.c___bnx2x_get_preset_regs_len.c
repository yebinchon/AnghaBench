
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bnx2x*) ;
 int** dump_num_registers ;

__attribute__((used)) static int __bnx2x_get_preset_regs_len(struct bnx2x *bp, u32 preset)
{
 if (CHIP_IS_E1(bp))
  return dump_num_registers[0][preset-1];
 else if (CHIP_IS_E1H(bp))
  return dump_num_registers[1][preset-1];
 else if (CHIP_IS_E2(bp))
  return dump_num_registers[2][preset-1];
 else if (CHIP_IS_E3A0(bp))
  return dump_num_registers[3][preset-1];
 else if (CHIP_IS_E3B0(bp))
  return dump_num_registers[4][preset-1];
 else
  return 0;
}
