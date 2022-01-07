
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int current_mode; int high_water; scalar_t__ send_xon; int low_water; } ;
struct igc_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int IGC_FCRTH ;
 int IGC_FCRTL ;
 int IGC_FCRTL_XONE ;
 int igc_fc_tx_pause ;
 int wr32 (int ,int ) ;

__attribute__((used)) static s32 igc_set_fc_watermarks(struct igc_hw *hw)
{
 u32 fcrtl = 0, fcrth = 0;







 if (hw->fc.current_mode & igc_fc_tx_pause) {




  fcrtl = hw->fc.low_water;
  if (hw->fc.send_xon)
   fcrtl |= IGC_FCRTL_XONE;

  fcrth = hw->fc.high_water;
 }
 wr32(IGC_FCRTL, fcrtl);
 wr32(IGC_FCRTH, fcrth);

 return 0;
}
