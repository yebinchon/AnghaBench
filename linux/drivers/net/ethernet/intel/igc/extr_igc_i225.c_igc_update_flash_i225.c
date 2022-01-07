
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
typedef int s32 ;


 int IGC_EECD ;
 int IGC_EECD_FLUPD_I225 ;
 int IGC_ERR_NVM ;
 int hw_dbg (char*) ;
 int igc_pool_flash_update_done_i225 (struct igc_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igc_update_flash_i225(struct igc_hw *hw)
{
 s32 ret_val = 0;
 u32 flup;

 ret_val = igc_pool_flash_update_done_i225(hw);
 if (ret_val == -IGC_ERR_NVM) {
  hw_dbg("Flash update time out\n");
  goto out;
 }

 flup = rd32(IGC_EECD) | IGC_EECD_FLUPD_I225;
 wr32(IGC_EECD, flup);

 ret_val = igc_pool_flash_update_done_i225(hw);
 if (ret_val)
  hw_dbg("Flash update time out\n");
 else
  hw_dbg("Flash update complete\n");

out:
 return ret_val;
}
