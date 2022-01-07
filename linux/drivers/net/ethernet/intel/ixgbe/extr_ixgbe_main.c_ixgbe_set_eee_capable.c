
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eee_speeds_advertised; int eee_speeds_supported; } ;
struct ixgbe_hw {int device_id; TYPE_1__ phy; } ;
struct ixgbe_adapter {int flags2; struct ixgbe_hw hw; } ;




 int IXGBE_FLAG2_EEE_CAPABLE ;
 int IXGBE_FLAG2_EEE_ENABLED ;

__attribute__((used)) static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 switch (hw->device_id) {
 case 129:
 case 128:
  if (!hw->phy.eee_speeds_supported)
   break;
  adapter->flags2 |= IXGBE_FLAG2_EEE_CAPABLE;
  if (!hw->phy.eee_speeds_advertised)
   break;
  adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
  break;
 default:
  adapter->flags2 &= ~IXGBE_FLAG2_EEE_CAPABLE;
  adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
  break;
 }
}
