
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ice_hw {int dummy; } ;


 int GLINT_CTL ;
 int GLINT_CTL_DIS_AUTOMASK_M ;
 int GLINT_CTL_ITR_GRAN_100_M ;
 int GLINT_CTL_ITR_GRAN_100_S ;
 int GLINT_CTL_ITR_GRAN_200_M ;
 int GLINT_CTL_ITR_GRAN_200_S ;
 int GLINT_CTL_ITR_GRAN_25_M ;
 int GLINT_CTL_ITR_GRAN_25_S ;
 int GLINT_CTL_ITR_GRAN_50_M ;
 int GLINT_CTL_ITR_GRAN_50_S ;
 int ICE_ITR_GRAN_US ;
 int rd32 (struct ice_hw*,int ) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static void ice_cfg_itr_gran(struct ice_hw *hw)
{
 u32 regval = rd32(hw, GLINT_CTL);


 if (!(regval & GLINT_CTL_DIS_AUTOMASK_M) &&
     (((regval & GLINT_CTL_ITR_GRAN_200_M) >>
      GLINT_CTL_ITR_GRAN_200_S) == ICE_ITR_GRAN_US) &&
     (((regval & GLINT_CTL_ITR_GRAN_100_M) >>
      GLINT_CTL_ITR_GRAN_100_S) == ICE_ITR_GRAN_US) &&
     (((regval & GLINT_CTL_ITR_GRAN_50_M) >>
      GLINT_CTL_ITR_GRAN_50_S) == ICE_ITR_GRAN_US) &&
     (((regval & GLINT_CTL_ITR_GRAN_25_M) >>
       GLINT_CTL_ITR_GRAN_25_S) == ICE_ITR_GRAN_US))
  return;

 regval = ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_200_S) &
    GLINT_CTL_ITR_GRAN_200_M) |
   ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_100_S) &
    GLINT_CTL_ITR_GRAN_100_M) |
   ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_50_S) &
    GLINT_CTL_ITR_GRAN_50_M) |
   ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_25_S) &
    GLINT_CTL_ITR_GRAN_25_M);
 wr32(hw, GLINT_CTL, regval);
}
