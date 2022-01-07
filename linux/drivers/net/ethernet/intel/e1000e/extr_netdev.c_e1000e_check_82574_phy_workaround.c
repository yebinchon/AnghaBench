
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {int phy_hang_count; int reset_task; struct e1000_hw hw; } ;


 scalar_t__ e1000_check_phy_82574 (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;




 if (e1000_check_phy_82574(hw))
  adapter->phy_hang_count++;
 else
  adapter->phy_hang_count = 0;

 if (adapter->phy_hang_count > 1) {
  adapter->phy_hang_count = 0;
  e_dbg("PHY appears hung - resetting\n");
  schedule_work(&adapter->reset_task);
 }
}
