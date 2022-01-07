
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_RAH (int) ;
 int E1000_RAH_AV ;
 int E1000_RAL (int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igb_rar_set(struct e1000_hw *hw, u8 *addr, u32 index)
{
 u32 rar_low, rar_high;




 rar_low = ((u32) addr[0] |
     ((u32) addr[1] << 8) |
      ((u32) addr[2] << 16) | ((u32) addr[3] << 24));

 rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));


 if (rar_low || rar_high)
  rar_high |= E1000_RAH_AV;





 wr32(E1000_RAL(index), rar_low);
 wrfl();
 wr32(E1000_RAH(index), rar_high);
 wrfl();
}
