
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_2__ {scalar_t__ clear_to_send; } ;


 int IXGBE_PF_CONTROL_MSG ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int ixgbe_write_mbx (struct ixgbe_hw*,int *,int,int) ;

__attribute__((used)) static inline void ixgbe_ping_vf(struct ixgbe_adapter *adapter, int vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ping;

 ping = IXGBE_PF_CONTROL_MSG;
 if (adapter->vfinfo[vf].clear_to_send)
  ping |= IXGBE_VT_MSGTYPE_CTS;
 ixgbe_write_mbx(hw, &ping, 1, vf);
}
