
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int CTRL_EXT ;
 int E1000_CTRL_EXT_DRV_LOAD ;
 int E1000_SWSM_DRV_LOAD ;
 int FLAG_HAS_CTRLEXT_ON_LOAD ;
 int FLAG_HAS_SWSM_ON_LOAD ;
 int SWSM ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

void e1000e_get_hw_control(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_ext;
 u32 swsm;


 if (adapter->flags & FLAG_HAS_SWSM_ON_LOAD) {
  swsm = er32(SWSM);
  ew32(SWSM, swsm | E1000_SWSM_DRV_LOAD);
 } else if (adapter->flags & FLAG_HAS_CTRLEXT_ON_LOAD) {
  ctrl_ext = er32(CTRL_EXT);
  ew32(CTRL_EXT, ctrl_ext | E1000_CTRL_EXT_DRV_LOAD);
 }
}
