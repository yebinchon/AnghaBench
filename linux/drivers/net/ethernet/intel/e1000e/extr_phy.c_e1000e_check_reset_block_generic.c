
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_BLK_PHY_RESET ;
 int E1000_MANC_BLK_PHY_RST_ON_IDE ;
 int MANC ;
 int er32 (int ) ;

s32 e1000e_check_reset_block_generic(struct e1000_hw *hw)
{
 u32 manc;

 manc = er32(MANC);

 return (manc & E1000_MANC_BLK_PHY_RST_ON_IDE) ? E1000_BLK_PHY_RESET : 0;
}
