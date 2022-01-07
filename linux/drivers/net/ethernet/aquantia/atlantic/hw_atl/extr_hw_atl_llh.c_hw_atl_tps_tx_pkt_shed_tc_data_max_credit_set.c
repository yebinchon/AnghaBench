
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_TPS_DATA_TCTCREDIT_MAX_ADR (int ) ;
 int HW_ATL_TPS_DATA_TCTCREDIT_MAX_MSK ;
 int HW_ATL_TPS_DATA_TCTCREDIT_MAX_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(struct aq_hw_s *aq_hw,
         u32 max_credit,
         u32 tc)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_TPS_DATA_TCTCREDIT_MAX_ADR(tc),
       HW_ATL_TPS_DATA_TCTCREDIT_MAX_MSK,
       HW_ATL_TPS_DATA_TCTCREDIT_MAX_SHIFT,
       max_credit);
}
