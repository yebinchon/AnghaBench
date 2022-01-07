
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {int e3; int e2; int e1h; int e1; } ;
struct TYPE_4__ {TYPE_1__ reg_mask; } ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 TYPE_2__* bnx2x_blocks_parity_data ;

__attribute__((used)) static inline u32 bnx2x_parity_reg_mask(struct bnx2x *bp, int idx)
{
 if (CHIP_IS_E1(bp))
  return bnx2x_blocks_parity_data[idx].reg_mask.e1;
 else if (CHIP_IS_E1H(bp))
  return bnx2x_blocks_parity_data[idx].reg_mask.e1h;
 else if (CHIP_IS_E2(bp))
  return bnx2x_blocks_parity_data[idx].reg_mask.e2;
 else
  return bnx2x_blocks_parity_data[idx].reg_mask.e3;
}
