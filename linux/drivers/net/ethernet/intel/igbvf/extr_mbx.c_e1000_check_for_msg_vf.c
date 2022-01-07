
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reqs; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct e1000_hw {TYPE_2__ mbx; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 int E1000_SUCCESS ;
 int E1000_V2PMAILBOX_PFSTS ;
 int e1000_check_for_bit_vf (struct e1000_hw*,int ) ;

__attribute__((used)) static s32 e1000_check_for_msg_vf(struct e1000_hw *hw)
{
 s32 ret_val = -E1000_ERR_MBX;

 if (!e1000_check_for_bit_vf(hw, E1000_V2PMAILBOX_PFSTS)) {
  ret_val = E1000_SUCCESS;
  hw->mbx.stats.reqs++;
 }

 return ret_val;
}
