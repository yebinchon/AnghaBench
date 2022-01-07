
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_hw {int intrl_gran; int itr_gran; } ;


 int GL_PWR_MODE_CTL ;
 int GL_PWR_MODE_CTL_CAR_MAX_BW_M ;
 int GL_PWR_MODE_CTL_CAR_MAX_BW_S ;
 int ICE_INTRL_GRAN_ABOVE_25 ;
 int ICE_INTRL_GRAN_MAX_25 ;
 int ICE_ITR_GRAN_ABOVE_25 ;
 int ICE_ITR_GRAN_MAX_25 ;




 int rd32 (struct ice_hw*,int ) ;

__attribute__((used)) static void ice_get_itr_intrl_gran(struct ice_hw *hw)
{
 u8 max_agg_bw = (rd32(hw, GL_PWR_MODE_CTL) &
    GL_PWR_MODE_CTL_CAR_MAX_BW_M) >>
   GL_PWR_MODE_CTL_CAR_MAX_BW_S;

 switch (max_agg_bw) {
 case 130:
 case 131:
 case 128:
  hw->itr_gran = ICE_ITR_GRAN_ABOVE_25;
  hw->intrl_gran = ICE_INTRL_GRAN_ABOVE_25;
  break;
 case 129:
  hw->itr_gran = ICE_ITR_GRAN_MAX_25;
  hw->intrl_gran = ICE_INTRL_GRAN_MAX_25;
  break;
 }
}
