
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int device_id; } ;





__attribute__((used)) static inline bool ixgbe_pcie_from_parent(struct ixgbe_hw *hw)
{
 switch (hw->device_id) {
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
