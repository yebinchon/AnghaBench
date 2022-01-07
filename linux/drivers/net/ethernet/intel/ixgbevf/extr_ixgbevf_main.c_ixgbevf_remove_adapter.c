
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_adapter {int state; TYPE_1__* pdev; } ;
struct ixgbe_hw {int * hw_addr; struct ixgbevf_adapter* back; } ;
struct TYPE_2__ {int dev; } ;


 int __IXGBEVF_SERVICE_INITED ;
 int dev_err (int *,char*) ;
 int ixgbevf_service_event_schedule (struct ixgbevf_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbevf_remove_adapter(struct ixgbe_hw *hw)
{
 struct ixgbevf_adapter *adapter = hw->back;

 if (!hw->hw_addr)
  return;
 hw->hw_addr = ((void*)0);
 dev_err(&adapter->pdev->dev, "Adapter removed\n");
 if (test_bit(__IXGBEVF_SERVICE_INITED, &adapter->state))
  ixgbevf_service_event_schedule(adapter);
}
