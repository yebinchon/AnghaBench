
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_TPS_DATA_TCTWEIGHT_ADR (int ) ;
 int HW_ATL_TPS_DATA_TCTWEIGHT_MSK ;
 int HW_ATL_TPS_DATA_TCTWEIGHT_SHIFT ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int ) ;

void hw_atl_tps_tx_pkt_shed_tc_data_weight_set(struct aq_hw_s *aq_hw,
            u32 tx_pkt_shed_tc_data_weight,
            u32 tc)
{
 aq_hw_write_reg_bit(aq_hw, HW_ATL_TPS_DATA_TCTWEIGHT_ADR(tc),
       HW_ATL_TPS_DATA_TCTWEIGHT_MSK,
       HW_ATL_TPS_DATA_TCTWEIGHT_SHIFT,
       tx_pkt_shed_tc_data_weight);
}
