
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 scalar_t__ e1000_82545 ;
 scalar_t__ e1000_82546 ;
 scalar_t__ e1000_ce4100 ;

__attribute__((used)) static bool e1000_check_64k_bound(struct e1000_adapter *adapter, void *start,
      unsigned long len)
{
 struct e1000_hw *hw = &adapter->hw;
 unsigned long begin = (unsigned long)start;
 unsigned long end = begin + len;




 if (hw->mac_type == e1000_82545 ||
     hw->mac_type == e1000_ce4100 ||
     hw->mac_type == e1000_82546) {
  return ((begin ^ (end - 1)) >> 16) != 0 ? 0 : 1;
 }

 return 1;
}
