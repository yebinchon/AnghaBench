
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPFL2PROMIS_MODE_ADR ;
 int HW_ATL_RPFL2PROMIS_MODE_MSK ;
 int HW_ATL_RPFL2PROMIS_MODE_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpfl2promiscuous_mode_en_set(struct aq_hw_s *aq_hw,
      u32 l2promiscuous_mode_en)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPFL2PROMIS_MODE_ADR,
       HW_ATL_RPFL2PROMIS_MODE_MSK,
       HW_ATL_RPFL2PROMIS_MODE_SHIFT,
       l2promiscuous_mode_en);
}
