
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;


 int IGC_EECD ;
 int IGC_EECD_FLASH_DETECTED_I225 ;
 int rd32 (int ) ;

bool igc_get_flash_presence_i225(struct igc_hw *hw)
{
 bool ret_val = 0;
 u32 eec = 0;

 eec = rd32(IGC_EECD);
 if (eec & IGC_EECD_FLASH_DETECTED_I225)
  ret_val = 1;

 return ret_val;
}
