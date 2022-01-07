
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GLGEN_RSTAT ;
 scalar_t__ GLGEN_RSTAT_DEVSTATE_M ;
 int GLNVM_ULD ;
 int ICE_DBG_INIT ;
 int ICE_ERR_RESET_FAILED ;
 scalar_t__ ICE_PF_RESET_WAIT_COUNT ;
 scalar_t__ ICE_RESET_DONE_MASK ;
 int PFGEN_CTRL ;
 scalar_t__ PFGEN_CTRL_PFSWR_M ;
 scalar_t__ ice_check_reset (struct ice_hw*) ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int mdelay (int) ;
 scalar_t__ rd32 (struct ice_hw*,int ) ;
 int wr32 (struct ice_hw*,int ,scalar_t__) ;

__attribute__((used)) static enum ice_status ice_pf_reset(struct ice_hw *hw)
{
 u32 cnt, reg;






 if ((rd32(hw, GLGEN_RSTAT) & GLGEN_RSTAT_DEVSTATE_M) ||
     (rd32(hw, GLNVM_ULD) & ICE_RESET_DONE_MASK) ^ ICE_RESET_DONE_MASK) {

  if (ice_check_reset(hw))
   return ICE_ERR_RESET_FAILED;

  return 0;
 }


 reg = rd32(hw, PFGEN_CTRL);

 wr32(hw, PFGEN_CTRL, (reg | PFGEN_CTRL_PFSWR_M));

 for (cnt = 0; cnt < ICE_PF_RESET_WAIT_COUNT; cnt++) {
  reg = rd32(hw, PFGEN_CTRL);
  if (!(reg & PFGEN_CTRL_PFSWR_M))
   break;

  mdelay(1);
 }

 if (cnt == ICE_PF_RESET_WAIT_COUNT) {
  ice_debug(hw, ICE_DBG_INIT,
     "PF reset polling failed to complete.\n");
  return ICE_ERR_RESET_FAILED;
 }

 return 0;
}
