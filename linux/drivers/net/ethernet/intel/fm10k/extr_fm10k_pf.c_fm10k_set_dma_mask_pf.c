
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fm10k_hw {int dummy; } ;


 int FM10K_PHYADDR ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int ) ;

__attribute__((used)) static void fm10k_set_dma_mask_pf(struct fm10k_hw *hw, u64 dma_mask)
{

 u32 phyaddr = (u32)(dma_mask >> 32);

 fm10k_write_reg(hw, FM10K_PHYADDR, phyaddr);
}
