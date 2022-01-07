
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int smb_counter; } ;
struct TYPE_6__ {TYPE_2__ e82571; } ;
struct TYPE_4__ {int word_size; } ;
struct e1000_hw {TYPE_3__ dev_spec; TYPE_1__ nvm; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 int E1000_SWSM_SMBI ;
 int E1000_SWSM_SWESMBI ;
 int SWSM ;
 int e1000_put_hw_semaphore_82571 (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_get_hw_semaphore_82571(struct e1000_hw *hw)
{
 u32 swsm;
 s32 sw_timeout = hw->nvm.word_size + 1;
 s32 fw_timeout = hw->nvm.word_size + 1;
 s32 i = 0;
 if (hw->dev_spec.e82571.smb_counter > 2)
  sw_timeout = 1;


 while (i < sw_timeout) {
  swsm = er32(SWSM);
  if (!(swsm & E1000_SWSM_SMBI))
   break;

  usleep_range(50, 100);
  i++;
 }

 if (i == sw_timeout) {
  e_dbg("Driver can't access device - SMBI bit is set.\n");
  hw->dev_spec.e82571.smb_counter++;
 }

 for (i = 0; i < fw_timeout; i++) {
  swsm = er32(SWSM);
  ew32(SWSM, swsm | E1000_SWSM_SWESMBI);


  if (er32(SWSM) & E1000_SWSM_SWESMBI)
   break;

  usleep_range(50, 100);
 }

 if (i == fw_timeout) {

  e1000_put_hw_semaphore_82571(hw);
  e_dbg("Driver can't access the NVM\n");
  return -E1000_ERR_NVM;
 }

 return 0;
}
