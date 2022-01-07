
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;


 int MBX_PF_VT_PFALLOC ;
 int PF_VT_PFALLOC_HIF ;
 int rd32 (struct ice_hw*,int ) ;
 int wr32 (struct ice_hw*,int ,int ) ;

void ice_dev_onetime_setup(struct ice_hw *hw)
{


 wr32(hw, 0x00231E80, rd32(hw, PF_VT_PFALLOC_HIF));
}
