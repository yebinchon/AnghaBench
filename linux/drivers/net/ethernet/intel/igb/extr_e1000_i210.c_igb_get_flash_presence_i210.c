
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_EECD ;
 int E1000_EECD_FLASH_DETECTED_I210 ;
 int rd32 (int ) ;

bool igb_get_flash_presence_i210(struct e1000_hw *hw)
{
 u32 eec = 0;
 bool ret_val = 0;

 eec = rd32(E1000_EECD);
 if (eec & E1000_EECD_FLASH_DETECTED_I210)
  ret_val = 1;

 return ret_val;
}
