
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPFL2BC_ACT_ADR ;
 int HW_ATL_RPFL2BC_ACT_MSK ;
 int HW_ATL_RPFL2BC_ACT_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpfl2broadcast_flr_act_set(struct aq_hw_s *aq_hw,
           u32 l2broadcast_flr_act)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPFL2BC_ACT_ADR,
       HW_ATL_RPFL2BC_ACT_MSK,
       HW_ATL_RPFL2BC_ACT_SHIFT, l2broadcast_flr_act);
}
