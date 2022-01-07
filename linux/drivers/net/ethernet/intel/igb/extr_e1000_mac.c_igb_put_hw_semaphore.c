
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_SWSM ;
 int E1000_SWSM_SMBI ;
 int E1000_SWSM_SWESMBI ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

void igb_put_hw_semaphore(struct e1000_hw *hw)
{
 u32 swsm;

 swsm = rd32(E1000_SWSM);

 swsm &= ~(E1000_SWSM_SMBI | E1000_SWSM_SWESMBI);

 wr32(E1000_SWSM, swsm);
}
