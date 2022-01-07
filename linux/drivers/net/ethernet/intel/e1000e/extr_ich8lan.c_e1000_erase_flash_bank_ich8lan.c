
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int berasesz; int flcdone; scalar_t__ flcerr; } ;
union ich8_hws_flash_status {TYPE_3__ hsf_status; void* regval; } ;
struct TYPE_4__ {int flcycle; } ;
union ich8_hws_flash_ctrl {int regval; TYPE_1__ hsf_ctrl; } ;
typedef scalar_t__ u32 ;
struct e1000_nvm_info {int flash_bank_size; scalar_t__ flash_base_addr; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 int ICH_CYCLE_ERASE ;
 scalar_t__ ICH_FLASH_CYCLE_REPEAT_COUNT ;
 scalar_t__ ICH_FLASH_ERASE_COMMAND_TIMEOUT ;
 int ICH_FLASH_FADDR ;
 int ICH_FLASH_HSFCTL ;
 int ICH_FLASH_HSFSTS ;
 scalar_t__ ICH_FLASH_SEG_SIZE_256 ;
 scalar_t__ ICH_FLASH_SEG_SIZE_4K ;
 scalar_t__ ICH_FLASH_SEG_SIZE_64K ;
 scalar_t__ ICH_FLASH_SEG_SIZE_8K ;
 scalar_t__ e1000_flash_cycle_ich8lan (struct e1000_hw*,scalar_t__) ;
 scalar_t__ e1000_flash_cycle_init_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_pch_spt ;
 void* er16flash (int ) ;
 int er32flash (int ) ;
 int ew16flash (int ,int) ;
 int ew32flash (int ,scalar_t__) ;

__attribute__((used)) static s32 e1000_erase_flash_bank_ich8lan(struct e1000_hw *hw, u32 bank)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 union ich8_hws_flash_status hsfsts;
 union ich8_hws_flash_ctrl hsflctl;
 u32 flash_linear_addr;

 u32 flash_bank_size = nvm->flash_bank_size * 2;
 s32 ret_val;
 s32 count = 0;
 s32 j, iteration, sector_size;

 hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
 switch (hsfsts.hsf_status.berasesz) {
 case 0:

  sector_size = ICH_FLASH_SEG_SIZE_256;
  iteration = flash_bank_size / ICH_FLASH_SEG_SIZE_256;
  break;
 case 1:
  sector_size = ICH_FLASH_SEG_SIZE_4K;
  iteration = 1;
  break;
 case 2:
  sector_size = ICH_FLASH_SEG_SIZE_8K;
  iteration = 1;
  break;
 case 3:
  sector_size = ICH_FLASH_SEG_SIZE_64K;
  iteration = 1;
  break;
 default:
  return -E1000_ERR_NVM;
 }


 flash_linear_addr = hw->nvm.flash_base_addr;
 flash_linear_addr += (bank) ? flash_bank_size : 0;

 for (j = 0; j < iteration; j++) {
  do {
   u32 timeout = ICH_FLASH_ERASE_COMMAND_TIMEOUT;


   ret_val = e1000_flash_cycle_init_ich8lan(hw);
   if (ret_val)
    return ret_val;




   if (hw->mac.type >= e1000_pch_spt)
    hsflctl.regval =
        er32flash(ICH_FLASH_HSFSTS) >> 16;
   else
    hsflctl.regval = er16flash(ICH_FLASH_HSFCTL);

   hsflctl.hsf_ctrl.flcycle = ICH_CYCLE_ERASE;
   if (hw->mac.type >= e1000_pch_spt)
    ew32flash(ICH_FLASH_HSFSTS,
       hsflctl.regval << 16);
   else
    ew16flash(ICH_FLASH_HSFCTL, hsflctl.regval);





   flash_linear_addr += (j * sector_size);
   ew32flash(ICH_FLASH_FADDR, flash_linear_addr);

   ret_val = e1000_flash_cycle_ich8lan(hw, timeout);
   if (!ret_val)
    break;





   hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
   if (hsfsts.hsf_status.flcerr)

    continue;
   else if (!hsfsts.hsf_status.flcdone)
    return ret_val;
  } while (++count < ICH_FLASH_CYCLE_REPEAT_COUNT);
 }

 return 0;
}
