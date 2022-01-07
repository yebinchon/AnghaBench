
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_RPO_LRO_PKT_MIN_ADR ;
 int HW_ATL_RPO_LRO_PKT_MIN_MSK ;
 int HW_ATL_RPO_LRO_PKT_MIN_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_rpo_lro_min_pay_of_first_pkt_set(struct aq_hw_s *aq_hw,
          u32 lro_min_pld_of_first_pkt)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_RPO_LRO_PKT_MIN_ADR,
       HW_ATL_RPO_LRO_PKT_MIN_MSK,
       HW_ATL_RPO_LRO_PKT_MIN_SHIFT,
       lro_min_pld_of_first_pkt);
}
