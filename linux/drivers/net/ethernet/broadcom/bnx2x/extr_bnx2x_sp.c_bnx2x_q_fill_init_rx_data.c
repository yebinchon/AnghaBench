
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* hi; void* lo; } ;
struct TYPE_5__ {void* hi; void* lo; } ;
struct TYPE_4__ {void* hi; void* lo; } ;
struct client_init_rx_data {int tpa_en; int enable_dynamic_hc; int inner_vlan_removal_enable_flg; int outer_vlan_removal_enable_flg; int is_leading_rss; int is_approx_mcast; int silent_vlan_removal_flg; void* silent_vlan_mask; void* silent_vlan_value; int rss_engine_id; int approx_mcast_engine_id; TYPE_3__ cqe_page_base; TYPE_2__ sge_page_base; TYPE_1__ bd_page_base; void* sge_buff_size; void* max_bytes_on_bd; int max_tpa_queues; int rx_sb_index_number; int status_block_id; scalar_t__ drop_udp_cs_err_flg; scalar_t__ drop_ttl0_flg; scalar_t__ drop_tcp_cs_err_flg; scalar_t__ drop_ip_cs_err_flg; void* state; void* max_agg_size; int client_qzone_id; int max_sges_for_packet; int cache_line_alignment_log_size; scalar_t__ vmqueue_mode_en_flg; } ;
struct bnx2x_rxq_setup_params {int tpa_agg_sz; int buf_sz; int sge_buf_sz; int silent_removal_value; int silent_removal_mask; int rss_engine_id; int mcast_engine_id; int rcq_map; int sge_map; int dscr_map; int max_tpa_queues; int sb_cq_index; int fw_sb_id; int cl_qzone_id; int max_sges_pkt; int cache_line_log; } ;
struct bnx2x_queue_sp_obj {int dummy; } ;


 int BNX2X_Q_FLG_DHC ;
 int BNX2X_Q_FLG_LEADING_RSS ;
 int BNX2X_Q_FLG_MCAST ;
 int BNX2X_Q_FLG_OV ;
 int BNX2X_Q_FLG_SILENT_VLAN_REM ;
 int BNX2X_Q_FLG_TPA ;
 int BNX2X_Q_FLG_TPA_GRO ;
 int BNX2X_Q_FLG_VLAN ;
 int CLIENT_INIT_RX_DATA_MCAST_DROP_ALL ;
 int CLIENT_INIT_RX_DATA_TPA_EN_IPV4 ;
 int CLIENT_INIT_RX_DATA_TPA_MODE ;
 int CLIENT_INIT_RX_DATA_UCAST_DROP_ALL ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static void bnx2x_q_fill_init_rx_data(struct bnx2x_queue_sp_obj *o,
    struct bnx2x_rxq_setup_params *params,
    struct client_init_rx_data *rx_data,
    unsigned long *flags)
{
 rx_data->tpa_en = test_bit(BNX2X_Q_FLG_TPA, flags) *
    CLIENT_INIT_RX_DATA_TPA_EN_IPV4;
 rx_data->tpa_en |= test_bit(BNX2X_Q_FLG_TPA_GRO, flags) *
    CLIENT_INIT_RX_DATA_TPA_MODE;
 rx_data->vmqueue_mode_en_flg = 0;

 rx_data->cache_line_alignment_log_size =
  params->cache_line_log;
 rx_data->enable_dynamic_hc =
  test_bit(BNX2X_Q_FLG_DHC, flags);
 rx_data->max_sges_for_packet = params->max_sges_pkt;
 rx_data->client_qzone_id = params->cl_qzone_id;
 rx_data->max_agg_size = cpu_to_le16(params->tpa_agg_sz);


 rx_data->state = cpu_to_le16(CLIENT_INIT_RX_DATA_UCAST_DROP_ALL |
         CLIENT_INIT_RX_DATA_MCAST_DROP_ALL);


 rx_data->drop_ip_cs_err_flg = 0;
 rx_data->drop_tcp_cs_err_flg = 0;
 rx_data->drop_ttl0_flg = 0;
 rx_data->drop_udp_cs_err_flg = 0;
 rx_data->inner_vlan_removal_enable_flg =
  test_bit(BNX2X_Q_FLG_VLAN, flags);
 rx_data->outer_vlan_removal_enable_flg =
  test_bit(BNX2X_Q_FLG_OV, flags);
 rx_data->status_block_id = params->fw_sb_id;
 rx_data->rx_sb_index_number = params->sb_cq_index;
 rx_data->max_tpa_queues = params->max_tpa_queues;
 rx_data->max_bytes_on_bd = cpu_to_le16(params->buf_sz);
 rx_data->sge_buff_size = cpu_to_le16(params->sge_buf_sz);
 rx_data->bd_page_base.lo =
  cpu_to_le32(U64_LO(params->dscr_map));
 rx_data->bd_page_base.hi =
  cpu_to_le32(U64_HI(params->dscr_map));
 rx_data->sge_page_base.lo =
  cpu_to_le32(U64_LO(params->sge_map));
 rx_data->sge_page_base.hi =
  cpu_to_le32(U64_HI(params->sge_map));
 rx_data->cqe_page_base.lo =
  cpu_to_le32(U64_LO(params->rcq_map));
 rx_data->cqe_page_base.hi =
  cpu_to_le32(U64_HI(params->rcq_map));
 rx_data->is_leading_rss = test_bit(BNX2X_Q_FLG_LEADING_RSS, flags);

 if (test_bit(BNX2X_Q_FLG_MCAST, flags)) {
  rx_data->approx_mcast_engine_id = params->mcast_engine_id;
  rx_data->is_approx_mcast = 1;
 }

 rx_data->rss_engine_id = params->rss_engine_id;


 rx_data->silent_vlan_removal_flg =
  test_bit(BNX2X_Q_FLG_SILENT_VLAN_REM, flags);
 rx_data->silent_vlan_value =
  cpu_to_le16(params->silent_removal_value);
 rx_data->silent_vlan_mask =
  cpu_to_le16(params->silent_removal_mask);
}
