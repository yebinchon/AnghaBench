
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_link_status; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbevf_adapter {int eims_other; struct ixgbe_hw hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IXGBE_VTEIMS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbevf_service_event_schedule (struct ixgbevf_adapter*) ;

__attribute__((used)) static irqreturn_t ixgbevf_msix_other(int irq, void *data)
{
 struct ixgbevf_adapter *adapter = data;
 struct ixgbe_hw *hw = &adapter->hw;

 hw->mac.get_link_status = 1;

 ixgbevf_service_event_schedule(adapter);

 IXGBE_WRITE_REG(hw, IXGBE_VTEIMS, adapter->eims_other);

 return IRQ_HANDLED;
}
