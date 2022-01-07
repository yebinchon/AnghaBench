
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int flags; struct ixgbe_hw hw; } ;


 int IXGBE_EICR ;
 int IXGBE_EICR_GPI_SDP1 (struct ixgbe_hw*) ;
 int IXGBE_FLAG_FAN_FAIL_CAPABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int e_crit (int ,char*) ;
 int probe ;

__attribute__((used)) static void ixgbe_check_fan_failure(struct ixgbe_adapter *adapter, u32 eicr)
{
 struct ixgbe_hw *hw = &adapter->hw;

 if ((adapter->flags & IXGBE_FLAG_FAN_FAIL_CAPABLE) &&
     (eicr & IXGBE_EICR_GPI_SDP1(hw))) {
  e_crit(probe, "Fan has stopped, replace the adapter\n");

  IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP1(hw));
 }
}
