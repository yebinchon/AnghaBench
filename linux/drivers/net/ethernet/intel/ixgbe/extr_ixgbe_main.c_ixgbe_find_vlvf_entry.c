
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VLVF (int) ;
 int IXGBE_VLVF_ENTRIES ;
 int VLAN_VID_MASK ;

__attribute__((used)) static int ixgbe_find_vlvf_entry(struct ixgbe_hw *hw, u32 vlan)
{
 u32 vlvf;
 int idx;


 if (vlan == 0)
  return 0;


 for (idx = IXGBE_VLVF_ENTRIES; --idx;) {
  vlvf = IXGBE_READ_REG(hw, IXGBE_VLVF(idx));
  if ((vlvf & VLAN_VID_MASK) == vlan)
   break;
 }

 return idx;
}
