
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ice_hw {int dummy; } ;


 int PRTDCB_GENS ;
 int PRTDCB_GENS_DCBX_STATUS_M ;
 int PRTDCB_GENS_DCBX_STATUS_S ;
 int rd32 (struct ice_hw*,int ) ;

__attribute__((used)) static u8 ice_get_dcbx_status(struct ice_hw *hw)
{
 u32 reg;

 reg = rd32(hw, PRTDCB_GENS);
 return (u8)((reg & PRTDCB_GENS_DCBX_STATUS_M) >>
      PRTDCB_GENS_DCBX_STATUS_S);
}
