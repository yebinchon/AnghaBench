
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_VLVF (int) ;
 int E1000_VLVF_ARRAY_SIZE ;
 int VLAN_VID_MASK ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_find_vlvf_entry(struct e1000_hw *hw, u32 vlan)
{
 u32 vlvf;
 int idx;


 if (vlan == 0)
  return 0;


 for (idx = E1000_VLVF_ARRAY_SIZE; --idx;) {
  vlvf = rd32(E1000_VLVF(idx));
  if ((vlvf & VLAN_VID_MASK) == vlan)
   break;
 }

 return idx;
}
