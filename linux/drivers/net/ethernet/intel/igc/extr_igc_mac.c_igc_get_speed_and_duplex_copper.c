
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct igc_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int FULL_DUPLEX ;
 int HALF_DUPLEX ;
 int IGC_STATUS ;
 int IGC_STATUS_FD ;
 int IGC_STATUS_SPEED_100 ;
 int IGC_STATUS_SPEED_1000 ;
 int IGC_STATUS_SPEED_2500 ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;
 int hw_dbg (char*) ;
 scalar_t__ igc_i225 ;
 int rd32 (int ) ;

s32 igc_get_speed_and_duplex_copper(struct igc_hw *hw, u16 *speed,
        u16 *duplex)
{
 u32 status;

 status = rd32(IGC_STATUS);
 if (status & IGC_STATUS_SPEED_1000) {




  if (hw->mac.type == igc_i225 &&
      (status & IGC_STATUS_SPEED_2500)) {
   *speed = SPEED_2500;
   hw_dbg("2500 Mbs, ");
  } else {
   *speed = SPEED_1000;
   hw_dbg("1000 Mbs, ");
  }
 } else if (status & IGC_STATUS_SPEED_100) {
  *speed = SPEED_100;
  hw_dbg("100 Mbs, ");
 } else {
  *speed = SPEED_10;
  hw_dbg("10 Mbs, ");
 }

 if (status & IGC_STATUS_FD) {
  *duplex = FULL_DUPLEX;
  hw_dbg("Full Duplex\n");
 } else {
  *duplex = HALF_DUPLEX;
  hw_dbg("Half Duplex\n");
 }

 return 0;
}
