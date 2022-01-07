
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int mc_filter_type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int hw_dbg (struct ixgbe_hw*,char*) ;

__attribute__((used)) static s32 ixgbe_mta_vector(struct ixgbe_hw *hw, u8 *mc_addr)
{
 u32 vector = 0;

 switch (hw->mac.mc_filter_type) {
 case 0:
  vector = ((mc_addr[4] >> 4) | (((u16)mc_addr[5]) << 4));
  break;
 case 1:
  vector = ((mc_addr[4] >> 3) | (((u16)mc_addr[5]) << 5));
  break;
 case 2:
  vector = ((mc_addr[4] >> 2) | (((u16)mc_addr[5]) << 6));
  break;
 case 3:
  vector = ((mc_addr[4]) | (((u16)mc_addr[5]) << 8));
  break;
 default:
  hw_dbg(hw, "MC filter type param set incorrectly\n");
  break;
 }


 vector &= 0xFFF;
 return vector;
}
