
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int FM10K_DMA_CTRL2 ;
 int FM10K_DMA_CTRL2_SWITCH_READY ;
 int fm10k_get_host_state_generic (struct fm10k_hw*,int*) ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;

__attribute__((used)) static s32 fm10k_get_host_state_pf(struct fm10k_hw *hw, bool *switch_ready)
{
 u32 dma_ctrl2;


 dma_ctrl2 = fm10k_read_reg(hw, FM10K_DMA_CTRL2);
 if (!(dma_ctrl2 & FM10K_DMA_CTRL2_SWITCH_READY))
  return 0;


 return fm10k_get_host_state_generic(hw, switch_ready);
}
