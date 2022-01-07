
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;


 int GL_PREEXT_L2_PMASK0 (int ) ;
 int GL_PREEXT_L2_PMASK1 (int ) ;
 int ICE_SW_BLK_IDX ;
 int ICE_SW_BLK_INP_MASK_H ;
 int ICE_SW_BLK_INP_MASK_L ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static void ice_init_pkg_regs(struct ice_hw *hw)
{





 wr32(hw, GL_PREEXT_L2_PMASK0(0), 0xFFFFFFFF);
 wr32(hw, GL_PREEXT_L2_PMASK1(0), 0x0000FFFF);
}
