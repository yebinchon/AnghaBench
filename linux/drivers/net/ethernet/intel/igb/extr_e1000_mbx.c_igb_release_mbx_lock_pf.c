
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_P2VMAILBOX (int ) ;
 int E1000_P2VMAILBOX_PFU ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igb_release_mbx_lock_pf(struct e1000_hw *hw, u16 vf_number)
{
 u32 p2v_mailbox;


 p2v_mailbox = rd32(E1000_P2VMAILBOX(vf_number));
 if (p2v_mailbox & E1000_P2VMAILBOX_PFU)
  wr32(E1000_P2VMAILBOX(vf_number),
       p2v_mailbox & ~E1000_P2VMAILBOX_PFU);

 return 0;
}
