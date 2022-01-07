
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int * hw_addr; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int state; } ;


 int __IXGBE_SERVICE_INITED ;
 int e_dev_err (char*) ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_remove_adapter(struct ixgbe_hw *hw)
{
 struct ixgbe_adapter *adapter = hw->back;

 if (!hw->hw_addr)
  return;
 hw->hw_addr = ((void*)0);
 e_dev_err("Adapter removed\n");
 if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state))
  ixgbe_service_event_schedule(adapter);
}
