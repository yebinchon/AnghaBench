
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; int state; struct ixgbe_hw hw; scalar_t__ sfp_poll_time; int flags2; } ;


 int IXGBE_EICR ;
 int IXGBE_EICR_GPI_SDP0_X540 ;
 int IXGBE_EICR_GPI_SDP1 (struct ixgbe_hw*) ;
 int IXGBE_EICR_GPI_SDP2 (struct ixgbe_hw*) ;
 int IXGBE_FLAG2_SFP_NEEDS_RESET ;
 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBE_DOWN ;
 int ixgbe_is_sfp (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_mac_82599EB ;
 scalar_t__ ixgbe_mac_X540 ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_check_sfp_event(struct ixgbe_adapter *adapter, u32 eicr)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 eicr_mask = IXGBE_EICR_GPI_SDP2(hw);

 if (!ixgbe_is_sfp(hw))
  return;


 if (hw->mac.type >= ixgbe_mac_X540)
  eicr_mask = IXGBE_EICR_GPI_SDP0_X540;

 if (eicr & eicr_mask) {

  IXGBE_WRITE_REG(hw, IXGBE_EICR, eicr_mask);
  if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
   adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
   adapter->sfp_poll_time = 0;
   ixgbe_service_event_schedule(adapter);
  }
 }

 if (adapter->hw.mac.type == ixgbe_mac_82599EB &&
     (eicr & IXGBE_EICR_GPI_SDP1(hw))) {

  IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP1(hw));
  if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
   adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
   ixgbe_service_event_schedule(adapter);
  }
 }
}
