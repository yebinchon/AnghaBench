
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flcdone; scalar_t__ flcerr; } ;
union ich8_hws_flash_status {TYPE_4__ hsf_status; int regval; } ;
struct TYPE_7__ {int fldbcount; int flcycle; } ;
union ich8_hws_flash_ctrl {int regval; TYPE_3__ hsf_ctrl; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_6__ {int flash_base_addr; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ nvm; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 int ICH_CYCLE_READ ;
 scalar_t__ ICH_FLASH_CYCLE_REPEAT_COUNT ;
 int ICH_FLASH_FADDR ;
 int ICH_FLASH_FDATA0 ;
 int ICH_FLASH_HSFSTS ;
 int ICH_FLASH_LINEAR_ADDR_MASK ;
 int ICH_FLASH_READ_COMMAND_TIMEOUT ;
 scalar_t__ e1000_flash_cycle_ich8lan (struct e1000_hw*,int ) ;
 scalar_t__ e1000_flash_cycle_init_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_pch_spt ;
 int e_dbg (char*) ;
 int er16flash (int ) ;
 int er32flash (int ) ;
 int ew32flash (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_read_flash_data32_ich8lan(struct e1000_hw *hw, u32 offset,
        u32 *data)
{
 union ich8_hws_flash_status hsfsts;
 union ich8_hws_flash_ctrl hsflctl;
 u32 flash_linear_addr;
 s32 ret_val = -E1000_ERR_NVM;
 u8 count = 0;

 if (offset > ICH_FLASH_LINEAR_ADDR_MASK || hw->mac.type < e1000_pch_spt)
  return -E1000_ERR_NVM;
 flash_linear_addr = ((ICH_FLASH_LINEAR_ADDR_MASK & offset) +
        hw->nvm.flash_base_addr);

 do {
  udelay(1);

  ret_val = e1000_flash_cycle_init_ich8lan(hw);
  if (ret_val)
   break;



  hsflctl.regval = er32flash(ICH_FLASH_HSFSTS) >> 16;


  hsflctl.hsf_ctrl.fldbcount = sizeof(u32) - 1;
  hsflctl.hsf_ctrl.flcycle = ICH_CYCLE_READ;



  ew32flash(ICH_FLASH_HSFSTS, (u32)hsflctl.regval << 16);
  ew32flash(ICH_FLASH_FADDR, flash_linear_addr);

  ret_val =
     e1000_flash_cycle_ich8lan(hw,
          ICH_FLASH_READ_COMMAND_TIMEOUT);






  if (!ret_val) {
   *data = er32flash(ICH_FLASH_FDATA0);
   break;
  } else {





   hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
   if (hsfsts.hsf_status.flcerr) {

    continue;
   } else if (!hsfsts.hsf_status.flcdone) {
    e_dbg("Timeout error - flash cycle did not complete.\n");
    break;
   }
  }
 } while (count++ < ICH_FLASH_CYCLE_REPEAT_COUNT);

 return ret_val;
}
