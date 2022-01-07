
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct igb_adapter {size_t* shadow_vfta; } ;
struct e1000_hw {struct igb_adapter* back; } ;


 int E1000_VFTA ;
 int array_wr32 (int ,size_t,size_t) ;
 int wrfl () ;

__attribute__((used)) static void igb_write_vfta_i350(struct e1000_hw *hw, u32 offset, u32 value)
{
 struct igb_adapter *adapter = hw->back;
 int i;

 for (i = 10; i--;)
  array_wr32(E1000_VFTA, offset, value);

 wrfl();
 adapter->shadow_vfta[offset] = value;
}
