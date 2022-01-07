
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_MBX ;
 int E1000_P2VMAILBOX (int ) ;
 int E1000_P2VMAILBOX_PFU ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igb_obtain_mbx_lock_pf(struct e1000_hw *hw, u16 vf_number)
{
 s32 ret_val = -E1000_ERR_MBX;
 u32 p2v_mailbox;
 int count = 10;

 do {

  wr32(E1000_P2VMAILBOX(vf_number), E1000_P2VMAILBOX_PFU);


  p2v_mailbox = rd32(E1000_P2VMAILBOX(vf_number));
  if (p2v_mailbox & E1000_P2VMAILBOX_PFU) {
   ret_val = 0;
   break;
  }
  udelay(1000);
 } while (count-- > 0);

 return ret_val;
}
