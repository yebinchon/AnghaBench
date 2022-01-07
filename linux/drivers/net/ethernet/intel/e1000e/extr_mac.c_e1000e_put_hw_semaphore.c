
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_SWSM_SMBI ;
 int E1000_SWSM_SWESMBI ;
 int SWSM ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

void e1000e_put_hw_semaphore(struct e1000_hw *hw)
{
 u32 swsm;

 swsm = er32(SWSM);
 swsm &= ~(E1000_SWSM_SMBI | E1000_SWSM_SWESMBI);
 ew32(SWSM, swsm);
}
