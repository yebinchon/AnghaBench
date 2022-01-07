
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* read_posted ) (struct e1000_hw*,int*,int) ;int (* write_posted ) (struct e1000_hw*,int*,int) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_VFMAILBOX_SIZE ;
 int E1000_VF_SET_MULTICAST ;
 int E1000_VT_MSGINFO_SHIFT ;
 int ETH_ALEN ;
 int e1000_hash_mc_addr_vf (struct e1000_hw*,int *) ;
 int stub1 (struct e1000_hw*,int*,int) ;
 int stub2 (struct e1000_hw*,int*,int) ;

__attribute__((used)) static void e1000_update_mc_addr_list_vf(struct e1000_hw *hw,
      u8 *mc_addr_list, u32 mc_addr_count,
      u32 rar_used_count, u32 rar_count)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 msgbuf[E1000_VFMAILBOX_SIZE];
 u16 *hash_list = (u16 *)&msgbuf[1];
 u32 hash_value;
 u32 cnt, i;
 s32 ret_val;
 cnt = (mc_addr_count > 30) ? 30 : mc_addr_count;
 msgbuf[0] = E1000_VF_SET_MULTICAST;
 msgbuf[0] |= cnt << E1000_VT_MSGINFO_SHIFT;

 for (i = 0; i < cnt; i++) {
  hash_value = e1000_hash_mc_addr_vf(hw, mc_addr_list);
  hash_list[i] = hash_value & 0x0FFFF;
  mc_addr_list += ETH_ALEN;
 }

 ret_val = mbx->ops.write_posted(hw, msgbuf, E1000_VFMAILBOX_SIZE);
 if (!ret_val)
  mbx->ops.read_posted(hw, msgbuf, 1);
}
