
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPF_ET_ENF_ADR (int ) ;
 int HW_ATL_RPF_ET_ENF_MSK ;
 int HW_ATL_RPF_ET_ENF_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpf_etht_flr_en_set(struct aq_hw_s *aq_hw, u32 etht_flr_en,
    u32 filter)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPF_ET_ENF_ADR(filter),
       HW_ATL_RPF_ET_ENF_MSK,
       HW_ATL_RPF_ET_ENF_SHIFT, etht_flr_en);
}
