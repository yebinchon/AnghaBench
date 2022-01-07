
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_BLK_PHY_RESET ;
 int E1000_ICH_FWSM_RSPCIPHY ;
 int FWSM ;
 int er32 (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_check_reset_block_ich8lan(struct e1000_hw *hw)
{
 bool blocked = 0;
 int i = 0;

 while ((blocked = !(er32(FWSM) & E1000_ICH_FWSM_RSPCIPHY)) &&
        (i++ < 30))
  usleep_range(10000, 11000);
 return blocked ? E1000_BLK_PHY_RESET : 0;
}
