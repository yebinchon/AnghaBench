
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_MBX ;
 int E1000_V2PMAILBOX_VFU ;
 int V2PMAILBOX (int ) ;
 int e1000_read_v2p_mailbox (struct e1000_hw*) ;
 int ew32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_obtain_mbx_lock_vf(struct e1000_hw *hw)
{
 s32 ret_val = -E1000_ERR_MBX;
 int count = 10;

 do {

  ew32(V2PMAILBOX(0), E1000_V2PMAILBOX_VFU);


  if (e1000_read_v2p_mailbox(hw) & E1000_V2PMAILBOX_VFU) {
   ret_val = 0;
   break;
  }
  udelay(1000);
 } while (count-- > 0);

 return ret_val;
}
