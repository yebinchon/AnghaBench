
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int clear_semaphore_once; } ;
struct TYPE_6__ {TYPE_2__ _base; } ;
struct TYPE_4__ {scalar_t__ word_size; } ;
struct igc_hw {TYPE_3__ dev_spec; TYPE_1__ nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IGC_ERR_NVM ;
 int IGC_SWSM ;
 int IGC_SWSM_SMBI ;
 int IGC_SWSM_SWESMBI ;
 int hw_dbg (char*) ;
 int igc_put_hw_semaphore (struct igc_hw*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igc_get_hw_semaphore_i225(struct igc_hw *hw)
{
 s32 timeout = hw->nvm.word_size + 1;
 s32 i = 0;
 u32 swsm;


 while (i < timeout) {
  swsm = rd32(IGC_SWSM);
  if (!(swsm & IGC_SWSM_SMBI))
   break;

  usleep_range(500, 600);
  i++;
 }

 if (i == timeout) {



  if (hw->dev_spec._base.clear_semaphore_once) {
   hw->dev_spec._base.clear_semaphore_once = 0;
   igc_put_hw_semaphore(hw);
   for (i = 0; i < timeout; i++) {
    swsm = rd32(IGC_SWSM);
    if (!(swsm & IGC_SWSM_SMBI))
     break;

    usleep_range(500, 600);
   }
  }


  if (i == timeout) {
   hw_dbg("Driver can't access device - SMBI bit is set.\n");
   return -IGC_ERR_NVM;
  }
 }


 for (i = 0; i < timeout; i++) {
  swsm = rd32(IGC_SWSM);
  wr32(IGC_SWSM, swsm | IGC_SWSM_SWESMBI);


  if (rd32(IGC_SWSM) & IGC_SWSM_SWESMBI)
   break;

  usleep_range(500, 600);
 }

 if (i == timeout) {

  igc_put_hw_semaphore(hw);
  hw_dbg("Driver can't access the NVM\n");
  return -IGC_ERR_NVM;
 }

 return 0;
}
