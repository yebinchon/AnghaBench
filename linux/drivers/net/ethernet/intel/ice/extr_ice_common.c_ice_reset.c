
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;


 int GLGEN_RTRIG ;
 int GLGEN_RTRIG_CORER_M ;
 int GLGEN_RTRIG_GLOBR_M ;
 int ICE_DBG_INIT ;
 int ICE_ERR_PARAM ;



 int ice_check_reset (struct ice_hw*) ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int ice_flush (struct ice_hw*) ;
 int ice_pf_reset (struct ice_hw*) ;
 int rd32 (struct ice_hw*,int ) ;
 int wr32 (struct ice_hw*,int ,int ) ;

enum ice_status ice_reset(struct ice_hw *hw, enum ice_reset_req req)
{
 u32 val = 0;

 switch (req) {
 case 128:
  return ice_pf_reset(hw);
 case 130:
  ice_debug(hw, ICE_DBG_INIT, "CoreR requested\n");
  val = GLGEN_RTRIG_CORER_M;
  break;
 case 129:
  ice_debug(hw, ICE_DBG_INIT, "GlobalR requested\n");
  val = GLGEN_RTRIG_GLOBR_M;
  break;
 default:
  return ICE_ERR_PARAM;
 }

 val |= rd32(hw, GLGEN_RTRIG);
 wr32(hw, GLGEN_RTRIG, val);
 ice_flush(hw);


 return ice_check_reset(hw);
}
