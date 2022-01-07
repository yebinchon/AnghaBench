
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPO_LRO_TB_DIV_ADR ;
 int HW_ATL_RPO_LRO_TB_DIV_MSK ;
 int HW_ATL_RPO_LRO_TB_DIV_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpo_lro_time_base_divider_set(struct aq_hw_s *aq_hw,
       u32 lro_time_base_divider)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPO_LRO_TB_DIV_ADR,
       HW_ATL_RPO_LRO_TB_DIV_MSK,
       HW_ATL_RPO_LRO_TB_DIV_SHIFT,
       lro_time_base_divider);
}
