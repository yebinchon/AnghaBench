
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; TYPE_1__* vf_data; struct e1000_hw hw; } ;
struct TYPE_2__ {int flags; } ;


 int E1000_PF_CONTROL_MSG ;
 int E1000_VT_MSGTYPE_CTS ;
 int IGB_VF_FLAG_CTS ;
 int igb_write_mbx (struct e1000_hw*,int *,int,int) ;

__attribute__((used)) static void igb_ping_all_vfs(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ping;
 int i;

 for (i = 0 ; i < adapter->vfs_allocated_count; i++) {
  ping = E1000_PF_CONTROL_MSG;
  if (adapter->vf_data[i].flags & IGB_VF_FLAG_CTS)
   ping |= E1000_VT_MSGTYPE_CTS;
  igb_write_mbx(hw, &ping, 1, i);
 }
}
