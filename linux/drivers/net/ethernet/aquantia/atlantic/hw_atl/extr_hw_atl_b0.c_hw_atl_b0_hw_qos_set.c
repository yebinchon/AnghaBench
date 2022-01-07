
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aq_hw_s {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_2__ {int flow_control; } ;


 int HW_ATL_B0_RXBUF_MAX ;
 int HW_ATL_B0_TXBUF_MAX ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_b0_set_fc (struct aq_hw_s*,int ,int) ;
 int hw_atl_rpb_rx_buff_hi_threshold_per_tc_set (struct aq_hw_s*,int,int) ;
 int hw_atl_rpb_rx_buff_lo_threshold_per_tc_set (struct aq_hw_s*,int,int) ;
 int hw_atl_rpb_rx_pkt_buff_size_per_tc_set (struct aq_hw_s*,int,int) ;
 int hw_atl_rpf_rpb_user_priority_tc_map_set (struct aq_hw_s*,unsigned int,unsigned int) ;
 int hw_atl_tpb_tx_buff_hi_threshold_per_tc_set (struct aq_hw_s*,int,int) ;
 int hw_atl_tpb_tx_buff_lo_threshold_per_tc_set (struct aq_hw_s*,int,int) ;
 int hw_atl_tpb_tx_pkt_buff_size_per_tc_set (struct aq_hw_s*,int,int) ;
 int hw_atl_tps_tx_pkt_shed_data_arb_mode_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set (struct aq_hw_s*,int) ;
 int hw_atl_tps_tx_pkt_shed_desc_rate_lim_set (struct aq_hw_s*,int) ;
 int hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set (struct aq_hw_s*,int,unsigned int) ;
 int hw_atl_tps_tx_pkt_shed_desc_tc_weight_set (struct aq_hw_s*,int,unsigned int) ;
 int hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set (struct aq_hw_s*,int,unsigned int) ;
 int hw_atl_tps_tx_pkt_shed_tc_data_weight_set (struct aq_hw_s*,int,unsigned int) ;

__attribute__((used)) static int hw_atl_b0_hw_qos_set(struct aq_hw_s *self)
{
 u32 tc = 0U;
 u32 buff_size = 0U;
 unsigned int i_priority = 0U;


 hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(self, 0x0U);
 hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(self, 0xA);


 hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(self, 0U);


 hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(self, 0U);
 hw_atl_tps_tx_pkt_shed_data_arb_mode_set(self, 0U);

 hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(self, 0xFFF, 0U);
 hw_atl_tps_tx_pkt_shed_tc_data_weight_set(self, 0x64, 0U);
 hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(self, 0x50, 0U);
 hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(self, 0x1E, 0U);


 buff_size = HW_ATL_B0_TXBUF_MAX;

 hw_atl_tpb_tx_pkt_buff_size_per_tc_set(self, buff_size, tc);
 hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(self,
         (buff_size *
         (1024 / 32U) * 66U) /
         100U, tc);
 hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(self,
         (buff_size *
         (1024 / 32U) * 50U) /
         100U, tc);


 tc = 0;
 buff_size = HW_ATL_B0_RXBUF_MAX;

 hw_atl_rpb_rx_pkt_buff_size_per_tc_set(self, buff_size, tc);
 hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(self,
         (buff_size *
         (1024U / 32U) * 66U) /
         100U, tc);
 hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(self,
         (buff_size *
         (1024U / 32U) * 50U) /
         100U, tc);

 hw_atl_b0_set_fc(self, self->aq_nic_cfg->flow_control, tc);


 for (i_priority = 8U; i_priority--;)
  hw_atl_rpf_rpb_user_priority_tc_map_set(self, i_priority, 0U);

 return aq_hw_err_from_flags(self);
}
