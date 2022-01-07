
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {int en_mask; int mask_addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 TYPE_1__* bnx2x_blocks_parity_data ;
 int bnx2x_parity_reg_mask (struct bnx2x*,int) ;
 int bnx2x_set_mcp_parity (struct bnx2x*,int) ;

__attribute__((used)) static inline void bnx2x_enable_blocks_parity(struct bnx2x *bp)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bnx2x_blocks_parity_data); i++) {
  u32 reg_mask = bnx2x_parity_reg_mask(bp, i);

  if (reg_mask)
   REG_WR(bp, bnx2x_blocks_parity_data[i].mask_addr,
    bnx2x_blocks_parity_data[i].en_mask & reg_mask);
 }


 bnx2x_set_mcp_parity(bp, 1);
}
