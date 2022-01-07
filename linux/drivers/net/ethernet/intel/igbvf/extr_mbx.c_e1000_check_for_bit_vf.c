
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int v2p_mailbox; } ;
struct TYPE_4__ {TYPE_1__ vf; } ;
struct e1000_hw {TYPE_2__ dev_spec; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 int E1000_SUCCESS ;
 int e1000_read_v2p_mailbox (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_check_for_bit_vf(struct e1000_hw *hw, u32 mask)
{
 u32 v2p_mailbox = e1000_read_v2p_mailbox(hw);
 s32 ret_val = -E1000_ERR_MBX;

 if (v2p_mailbox & mask)
  ret_val = E1000_SUCCESS;

 hw->dev_spec.vf.v2p_mailbox &= ~mask;

 return ret_val;
}
