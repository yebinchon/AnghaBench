
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
typedef int s32 ;


 int IGC_ERR_BLK_PHY_RESET ;
 int IGC_MANC ;
 int IGC_MANC_BLK_PHY_RST_ON_IDE ;
 int rd32 (int ) ;

s32 igc_check_reset_block(struct igc_hw *hw)
{
 u32 manc;

 manc = rd32(IGC_MANC);

 return (manc & IGC_MANC_BLK_PHY_RST_ON_IDE) ?
  IGC_ERR_BLK_PHY_RESET : 0;
}
