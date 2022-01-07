
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;


 int IGC_SWSM ;
 int IGC_SWSM_SMBI ;
 int IGC_SWSM_SWESMBI ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

void igc_put_hw_semaphore(struct igc_hw *hw)
{
 u32 swsm;

 swsm = rd32(IGC_SWSM);

 swsm &= ~(IGC_SWSM_SMBI | IGC_SWSM_SWESMBI);

 wr32(IGC_SWSM, swsm);
}
