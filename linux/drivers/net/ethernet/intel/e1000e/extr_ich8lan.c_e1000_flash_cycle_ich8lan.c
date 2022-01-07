
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flcerr; scalar_t__ flcdone; } ;
union ich8_hws_flash_status {TYPE_2__ hsf_status; void* regval; } ;
struct TYPE_4__ {int flcgo; } ;
union ich8_hws_flash_ctrl {int regval; TYPE_1__ hsf_ctrl; } ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ mac; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 int ICH_FLASH_HSFCTL ;
 int ICH_FLASH_HSFSTS ;
 scalar_t__ e1000_pch_spt ;
 void* er16flash (int ) ;
 int er32flash (int ) ;
 int ew16flash (int ,int) ;
 int ew32flash (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_flash_cycle_ich8lan(struct e1000_hw *hw, u32 timeout)
{
 union ich8_hws_flash_ctrl hsflctl;
 union ich8_hws_flash_status hsfsts;
 u32 i = 0;


 if (hw->mac.type >= e1000_pch_spt)
  hsflctl.regval = er32flash(ICH_FLASH_HSFSTS) >> 16;
 else
  hsflctl.regval = er16flash(ICH_FLASH_HSFCTL);
 hsflctl.hsf_ctrl.flcgo = 1;

 if (hw->mac.type >= e1000_pch_spt)
  ew32flash(ICH_FLASH_HSFSTS, hsflctl.regval << 16);
 else
  ew16flash(ICH_FLASH_HSFCTL, hsflctl.regval);


 do {
  hsfsts.regval = er16flash(ICH_FLASH_HSFSTS);
  if (hsfsts.hsf_status.flcdone)
   break;
  udelay(1);
 } while (i++ < timeout);

 if (hsfsts.hsf_status.flcdone && !hsfsts.hsf_status.flcerr)
  return 0;

 return -E1000_ERR_NVM;
}
