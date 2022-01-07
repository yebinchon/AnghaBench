
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ word_size; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 int E1000_SWSM_SMBI ;
 int E1000_SWSM_SWESMBI ;
 int SWSM ;
 int e1000e_put_hw_semaphore (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

s32 e1000e_get_hw_semaphore(struct e1000_hw *hw)
{
 u32 swsm;
 s32 timeout = hw->nvm.word_size + 1;
 s32 i = 0;


 while (i < timeout) {
  swsm = er32(SWSM);
  if (!(swsm & E1000_SWSM_SMBI))
   break;

  usleep_range(50, 100);
  i++;
 }

 if (i == timeout) {
  e_dbg("Driver can't access device - SMBI bit is set.\n");
  return -E1000_ERR_NVM;
 }


 for (i = 0; i < timeout; i++) {
  swsm = er32(SWSM);
  ew32(SWSM, swsm | E1000_SWSM_SWESMBI);


  if (er32(SWSM) & E1000_SWSM_SWESMBI)
   break;

  usleep_range(50, 100);
 }

 if (i == timeout) {

  e1000e_put_hw_semaphore(hw);
  e_dbg("Driver can't access the NVM\n");
  return -E1000_ERR_NVM;
 }

 return 0;
}
