
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_STATUS_FD ;
 int E1000_STATUS_SPEED_100 ;
 int E1000_STATUS_SPEED_1000 ;
 int E1000_SUCCESS ;
 int FULL_DUPLEX ;
 int HALF_DUPLEX ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int STATUS ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_get_link_up_info_vf(struct e1000_hw *hw, u16 *speed,
         u16 *duplex)
{
 s32 status;

 status = er32(STATUS);
 if (status & E1000_STATUS_SPEED_1000)
  *speed = SPEED_1000;
 else if (status & E1000_STATUS_SPEED_100)
  *speed = SPEED_100;
 else
  *speed = SPEED_10;

 if (status & E1000_STATUS_FD)
  *duplex = FULL_DUPLEX;
 else
  *duplex = HALF_DUPLEX;

 return E1000_SUCCESS;
}
