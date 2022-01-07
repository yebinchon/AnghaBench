
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int num_vfs; } ;
struct fm10k_hw {TYPE_1__ iov; } ;


 int FM10K_INT_CTRL ;
 scalar_t__ FM10K_INT_CTRL_ENABLEMODERATOR ;
 int FM10K_ITR2 (scalar_t__) ;
 scalar_t__ FM10K_ITR_REG_COUNT_PF ;
 int FM10K_MSIX_VECTOR_MASK (scalar_t__) ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,scalar_t__) ;

__attribute__((used)) static void fm10k_update_int_moderator_pf(struct fm10k_hw *hw)
{
 u32 i;


 fm10k_write_reg(hw, FM10K_INT_CTRL, 0);


 for (i = FM10K_ITR_REG_COUNT_PF - 1; i; i--) {
  if (!fm10k_read_reg(hw, FM10K_MSIX_VECTOR_MASK(i)))
   break;
 }


 fm10k_write_reg(hw, FM10K_ITR2(FM10K_ITR_REG_COUNT_PF), i);


 if (!hw->iov.num_vfs)
  fm10k_write_reg(hw, FM10K_ITR2(0), i);


 fm10k_write_reg(hw, FM10K_INT_CTRL, FM10K_INT_CTRL_ENABLEMODERATOR);
}
