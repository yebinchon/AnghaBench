
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_4__ {int msgs_rx; } ;
struct TYPE_3__ {TYPE_2__ stats; } ;
struct e1000_hw {TYPE_1__ mbx; } ;
typedef scalar_t__ s32 ;


 int E1000_P2VMAILBOX (size_t) ;
 int E1000_P2VMAILBOX_ACK ;
 int E1000_P2VMAILBOX_PFU ;
 int E1000_VMBMEM (size_t) ;
 int array_rd32 (int ,size_t) ;
 scalar_t__ igb_obtain_mbx_lock_pf (struct e1000_hw*,size_t) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igb_read_mbx_pf(struct e1000_hw *hw, u32 *msg, u16 size,
      u16 vf_number, bool unlock)
{
 s32 ret_val;
 u16 i;


 ret_val = igb_obtain_mbx_lock_pf(hw, vf_number);
 if (ret_val)
  goto out_no_read;


 for (i = 0; i < size; i++)
  msg[i] = array_rd32(E1000_VMBMEM(vf_number), i);


 if (unlock)
  wr32(E1000_P2VMAILBOX(vf_number), E1000_P2VMAILBOX_ACK);
 else
  wr32(E1000_P2VMAILBOX(vf_number),
       E1000_P2VMAILBOX_ACK | E1000_P2VMAILBOX_PFU);


 hw->mbx.stats.msgs_rx++;

out_no_read:
 return ret_val;
}
