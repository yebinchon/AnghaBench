
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {scalar_t__ vfs_allocated_count; struct e1000_hw hw; } ;


 int igb_check_for_ack (struct e1000_hw*,scalar_t__) ;
 int igb_check_for_msg (struct e1000_hw*,scalar_t__) ;
 int igb_check_for_rst (struct e1000_hw*,scalar_t__) ;
 int igb_rcv_ack_from_vf (struct igb_adapter*,scalar_t__) ;
 int igb_rcv_msg_from_vf (struct igb_adapter*,scalar_t__) ;
 int igb_vf_reset_event (struct igb_adapter*,scalar_t__) ;

__attribute__((used)) static void igb_msg_task(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 vf;

 for (vf = 0; vf < adapter->vfs_allocated_count; vf++) {

  if (!igb_check_for_rst(hw, vf))
   igb_vf_reset_event(adapter, vf);


  if (!igb_check_for_msg(hw, vf))
   igb_rcv_msg_from_vf(adapter, vf);


  if (!igb_check_for_ack(hw, vf))
   igb_rcv_ack_from_vf(adapter, vf);
 }
}
