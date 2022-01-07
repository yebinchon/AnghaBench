
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ arc_subsystem_valid; int asf_firmware_present; } ;
struct igc_hw {TYPE_1__ mac; } ;


 int IGC_FACTPS ;
 int IGC_FACTPS_MNGCG ;
 int IGC_FWSM ;
 int IGC_FWSM_MODE_MASK ;
 int IGC_FWSM_MODE_SHIFT ;
 int IGC_MANC ;
 int IGC_MANC_ASF_EN ;
 int IGC_MANC_RCV_TCO_EN ;
 int IGC_MANC_SMBUS_EN ;
 int igc_mng_mode_pt ;
 int rd32 (int ) ;

bool igc_enable_mng_pass_thru(struct igc_hw *hw)
{
 bool ret_val = 0;
 u32 fwsm, factps;
 u32 manc;

 if (!hw->mac.asf_firmware_present)
  goto out;

 manc = rd32(IGC_MANC);

 if (!(manc & IGC_MANC_RCV_TCO_EN))
  goto out;

 if (hw->mac.arc_subsystem_valid) {
  fwsm = rd32(IGC_FWSM);
  factps = rd32(IGC_FACTPS);

  if (!(factps & IGC_FACTPS_MNGCG) &&
      ((fwsm & IGC_FWSM_MODE_MASK) ==
      (igc_mng_mode_pt << IGC_FWSM_MODE_SHIFT))) {
   ret_val = 1;
   goto out;
  }
 } else {
  if ((manc & IGC_MANC_SMBUS_EN) &&
      !(manc & IGC_MANC_ASF_EN)) {
   ret_val = 1;
   goto out;
  }
 }

out:
 return ret_val;
}
