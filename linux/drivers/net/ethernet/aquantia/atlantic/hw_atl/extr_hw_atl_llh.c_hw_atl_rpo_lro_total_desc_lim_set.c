
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPO_LRO_TOT_DSC_LMT_ADR ;
 int HW_ATL_RPO_LRO_TOT_DSC_LMT_MSK ;
 int HW_ATL_RPO_LRO_TOT_DSC_LMT_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpo_lro_total_desc_lim_set(struct aq_hw_s *aq_hw,
           u32 lro_total_desc_lim)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPO_LRO_TOT_DSC_LMT_ADR,
       HW_ATL_RPO_LRO_TOT_DSC_LMT_MSK,
       HW_ATL_RPO_LRO_TOT_DSC_LMT_SHIFT,
       lro_total_desc_lim);
}
