
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xpakStat {int alarm_transceiver_temp_high; int alarm_transceiver_temp_low; int alarm_laser_bias_current_high; int alarm_laser_bias_current_low; int alarm_laser_output_power_high; int alarm_laser_output_power_low; int warn_transceiver_temp_high; int warn_transceiver_temp_low; int warn_laser_bias_current_high; int warn_laser_bias_current_low; int warn_laser_output_power_high; int warn_laser_output_power_low; } ;
struct swStat {int single_ecc_errs; int double_ecc_errs; int parity_err_cnt; int serious_err_cnt; int soft_reset_cnt; int fifo_full_cnt; int* ring_full_cnt; int clubbed_frms_cnt; int sending_both; int outof_sequence_pkts; int flush_max_pkts; int num_aggregations; int sum_avg_pkts_aggregated; int mem_alloc_fail_cnt; int pci_map_fail_cnt; int watchdog_timer_cnt; int mem_allocated; int mem_freed; int link_up_cnt; int link_down_cnt; int link_up_time; int link_down_time; int tx_buf_abort_cnt; int tx_desc_abort_cnt; int tx_parity_err_cnt; int tx_link_loss_cnt; int tx_list_proc_err_cnt; int rx_parity_err_cnt; int rx_abort_cnt; int rx_parity_abort_cnt; int rx_rda_fail_cnt; int rx_unkn_prot_cnt; int rx_fcs_err_cnt; int rx_buf_size_err_cnt; int rx_rxd_corrupt_cnt; int rx_unkn_err_cnt; int tda_err_cnt; int pfc_err_cnt; int pcc_err_cnt; int tti_err_cnt; int tpa_err_cnt; int sm_err_cnt; int lso_err_cnt; int mac_tmac_err_cnt; int mac_rmac_err_cnt; int xgxs_txgxs_err_cnt; int xgxs_rxgxs_err_cnt; int rc_err_cnt; int prc_pcix_err_cnt; int rpa_err_cnt; int rda_err_cnt; int rti_err_cnt; int mc_err_cnt; } ;
struct stat_block {int link_fault_cnt; int rmac_ingm_full_discard; int rmac_rts_discard; int rmac_red_discard; int rmac_da_discard; int rmac_pf_discard; int rmac_fcs_discard; int rmac_len_discard; int rmac_vlan_frms; int rmac_gt_max_alt_frms; int rmac_jabber_alt_frms; int rmac_osized_alt_frms; int rmac_ttl_gt_max_frms; int rmac_ttl_8192_max_frms; int rmac_ttl_4096_8191_frms; int rmac_ttl_1519_4095_frms; int rxf_wr_cnt; int txf_rd_cnt; int rxd_wr_cnt; int rxd_rd_cnt; int txd_wr_cnt; int txd_rd_cnt; int txp_wr_cnt; int rd_rtry_wr_ack_cnt; int wr_disc_cnt; int wr_rtry_cnt; int new_wr_req_rtry_cnt; int new_wr_req_cnt; int wr_req_cnt; int wr_rtry_rd_ack_cnt; int rd_rtry_cnt; int new_rd_req_rtry_cnt; int new_rd_req_cnt; int rd_req_cnt; int rmac_err_tcp; int rmac_accepted_ip; int rmac_accepted_ip_oflow; int rmac_xgmii_ctrl_err_cnt; int rmac_xgmii_data_err_cnt; int rmac_pause_cnt; int rmac_pause_cnt_oflow; int rmac_full_q7; int rmac_full_q6; int rmac_full_q5; int rmac_full_q4; int rmac_full_q3; int rmac_full_q2; int rmac_full_q1; int rmac_full_q0; int rmac_frms_q7; int rmac_frms_q6; int rmac_frms_q5; int rmac_frms_q4; int rmac_frms_q3; int rmac_frms_q2; int rmac_frms_q1; int rmac_frms_q0; int rmac_xgmii_err_sym; int rmac_err_drp_udp; int rmac_err_drp_udp_oflow; int rmac_udp; int rmac_udp_oflow; int rmac_tcp; int rmac_icmp; int rmac_icmp_oflow; int rmac_drop_ip; int rmac_drop_ip_oflow; int rmac_hdr_err_ip; int rmac_ip_octets; int rmac_ip; int rmac_ip_oflow; int rmac_ttl_1024_1518_frms; int rmac_ttl_512_1023_frms; int rmac_ttl_256_511_frms; int rmac_ttl_128_255_frms; int rmac_ttl_65_127_frms; int rmac_ttl_64_frms; int rmac_jabber_frms; int rmac_jabber_frms_oflow; int rmac_frag_frms; int rmac_frag_frms_oflow; int rmac_osized_frms; int rmac_osized_frms_oflow; int rmac_usized_frms; int rmac_usized_frms_oflow; int rmac_ttl_frms; int rmac_ttl_less_fb_octets; int rmac_drop_events; int rmac_drop_events_oflow; int rmac_discarded_frms; int rmac_discarded_frms_oflow; int rmac_accepted_nucst_frms; int rmac_accepted_nucst_frms_oflow; int rmac_accepted_ucst_frms; int rmac_accepted_ucst_frms_oflow; int rmac_ttl_octets; int rmac_ttl_octets_oflow; int rmac_unsup_ctrl_frms; int rmac_pause_ctrl_frms; int rmac_long_frms; int rmac_out_rng_len_err_frms; int rmac_in_rng_len_err_frms; int rmac_vld_bcst_frms; int rmac_vld_bcst_frms_oflow; int rmac_vld_mcst_frms; int rmac_vld_mcst_frms_oflow; int rmac_drop_frms; int rmac_fcs_err_frms; int rmac_data_octets; int rmac_data_octets_oflow; int rmac_vld_frms; int rmac_vld_frms_oflow; int tmac_udp; int tmac_udp_oflow; int tmac_tcp; int tmac_rst_tcp; int tmac_rst_tcp_oflow; int tmac_icmp; int tmac_icmp_oflow; int tmac_drop_ip; int tmac_drop_ip_oflow; int tmac_vld_ip; int tmac_vld_ip_oflow; int tmac_vld_ip_octets; int tmac_ttl_less_fb_octets; int tmac_any_err_frms; int tmac_any_err_frms_oflow; int tmac_nucst_frms; int tmac_nucst_frms_oflow; int tmac_ucst_frms; int tmac_ucst_frms_oflow; int tmac_ttl_octets; int tmac_ttl_octets_oflow; int tmac_pause_ctrl_frms; int tmac_bcst_frms; int tmac_bcst_frms_oflow; int tmac_mcst_frms; int tmac_mcst_frms_oflow; int tmac_drop_frms; int tmac_data_octets; int tmac_data_octets_oflow; int tmac_frms; int tmac_frms_oflow; struct xpakStat xpak_stat; struct swStat sw_stat; } ;
struct TYPE_2__ {struct stat_block* stats_info; } ;
struct s2io_nic {scalar_t__ device_type; TYPE_1__ mac_control; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int MAX_RX_RINGS ;
 scalar_t__ XFRAME_II_DEVICE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int s2io_updt_stats (struct s2io_nic*) ;

__attribute__((used)) static void s2io_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *estats,
       u64 *tmp_stats)
{
 int i = 0, k;
 struct s2io_nic *sp = netdev_priv(dev);
 struct stat_block *stats = sp->mac_control.stats_info;
 struct swStat *swstats = &stats->sw_stat;
 struct xpakStat *xstats = &stats->xpak_stat;

 s2io_updt_stats(sp);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_data_octets_oflow) << 32 |
  le32_to_cpu(stats->tmac_data_octets);
 tmp_stats[i++] = le64_to_cpu(stats->tmac_drop_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_mcst_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_mcst_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_bcst_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_bcst_frms);
 tmp_stats[i++] = le64_to_cpu(stats->tmac_pause_ctrl_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_ttl_octets_oflow) << 32 |
  le32_to_cpu(stats->tmac_ttl_octets);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_ucst_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_ucst_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_nucst_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_nucst_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_any_err_frms_oflow) << 32 |
  le32_to_cpu(stats->tmac_any_err_frms);
 tmp_stats[i++] = le64_to_cpu(stats->tmac_ttl_less_fb_octets);
 tmp_stats[i++] = le64_to_cpu(stats->tmac_vld_ip_octets);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_vld_ip_oflow) << 32 |
  le32_to_cpu(stats->tmac_vld_ip);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_drop_ip_oflow) << 32 |
  le32_to_cpu(stats->tmac_drop_ip);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_icmp_oflow) << 32 |
  le32_to_cpu(stats->tmac_icmp);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->tmac_rst_tcp_oflow) << 32 |
  le32_to_cpu(stats->tmac_rst_tcp);
 tmp_stats[i++] = le64_to_cpu(stats->tmac_tcp);
 tmp_stats[i++] = (u64)le32_to_cpu(stats->tmac_udp_oflow) << 32 |
  le32_to_cpu(stats->tmac_udp);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_vld_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_vld_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_data_octets_oflow) << 32 |
  le32_to_cpu(stats->rmac_data_octets);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_fcs_err_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_drop_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_vld_mcst_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_vld_mcst_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_vld_bcst_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_vld_bcst_frms);
 tmp_stats[i++] = le32_to_cpu(stats->rmac_in_rng_len_err_frms);
 tmp_stats[i++] = le32_to_cpu(stats->rmac_out_rng_len_err_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_long_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_pause_ctrl_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_unsup_ctrl_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_ttl_octets_oflow) << 32 |
  le32_to_cpu(stats->rmac_ttl_octets);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_accepted_ucst_frms_oflow) << 32
  | le32_to_cpu(stats->rmac_accepted_ucst_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_accepted_nucst_frms_oflow)
  << 32 | le32_to_cpu(stats->rmac_accepted_nucst_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_discarded_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_discarded_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_drop_events_oflow)
  << 32 | le32_to_cpu(stats->rmac_drop_events);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_less_fb_octets);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_usized_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_usized_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_osized_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_osized_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_frag_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_frag_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_jabber_frms_oflow) << 32 |
  le32_to_cpu(stats->rmac_jabber_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_64_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_65_127_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_128_255_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_256_511_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_512_1023_frms);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_1024_1518_frms);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_ip_oflow) << 32 |
  le32_to_cpu(stats->rmac_ip);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_ip_octets);
 tmp_stats[i++] = le32_to_cpu(stats->rmac_hdr_err_ip);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_drop_ip_oflow) << 32 |
  le32_to_cpu(stats->rmac_drop_ip);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_icmp_oflow) << 32 |
  le32_to_cpu(stats->rmac_icmp);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_tcp);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_udp_oflow) << 32 |
  le32_to_cpu(stats->rmac_udp);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_err_drp_udp_oflow) << 32 |
  le32_to_cpu(stats->rmac_err_drp_udp);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_xgmii_err_sym);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q0);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q1);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q2);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q3);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q4);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q5);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q6);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_frms_q7);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q0);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q1);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q2);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q3);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q4);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q5);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q6);
 tmp_stats[i++] = le16_to_cpu(stats->rmac_full_q7);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_pause_cnt_oflow) << 32 |
  le32_to_cpu(stats->rmac_pause_cnt);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_xgmii_data_err_cnt);
 tmp_stats[i++] = le64_to_cpu(stats->rmac_xgmii_ctrl_err_cnt);
 tmp_stats[i++] =
  (u64)le32_to_cpu(stats->rmac_accepted_ip_oflow) << 32 |
  le32_to_cpu(stats->rmac_accepted_ip);
 tmp_stats[i++] = le32_to_cpu(stats->rmac_err_tcp);
 tmp_stats[i++] = le32_to_cpu(stats->rd_req_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->new_rd_req_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->new_rd_req_rtry_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->rd_rtry_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->wr_rtry_rd_ack_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->wr_req_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->new_wr_req_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->new_wr_req_rtry_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->wr_rtry_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->wr_disc_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->rd_rtry_wr_ack_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->txp_wr_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->txd_rd_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->txd_wr_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->rxd_rd_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->rxd_wr_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->txf_rd_cnt);
 tmp_stats[i++] = le32_to_cpu(stats->rxf_wr_cnt);


 if (sp->device_type == XFRAME_II_DEVICE) {
  tmp_stats[i++] =
   le64_to_cpu(stats->rmac_ttl_1519_4095_frms);
  tmp_stats[i++] =
   le64_to_cpu(stats->rmac_ttl_4096_8191_frms);
  tmp_stats[i++] =
   le64_to_cpu(stats->rmac_ttl_8192_max_frms);
  tmp_stats[i++] = le64_to_cpu(stats->rmac_ttl_gt_max_frms);
  tmp_stats[i++] = le64_to_cpu(stats->rmac_osized_alt_frms);
  tmp_stats[i++] = le64_to_cpu(stats->rmac_jabber_alt_frms);
  tmp_stats[i++] = le64_to_cpu(stats->rmac_gt_max_alt_frms);
  tmp_stats[i++] = le64_to_cpu(stats->rmac_vlan_frms);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_len_discard);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_fcs_discard);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_pf_discard);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_da_discard);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_red_discard);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_rts_discard);
  tmp_stats[i++] = le32_to_cpu(stats->rmac_ingm_full_discard);
  tmp_stats[i++] = le32_to_cpu(stats->link_fault_cnt);
 }

 tmp_stats[i++] = 0;
 tmp_stats[i++] = swstats->single_ecc_errs;
 tmp_stats[i++] = swstats->double_ecc_errs;
 tmp_stats[i++] = swstats->parity_err_cnt;
 tmp_stats[i++] = swstats->serious_err_cnt;
 tmp_stats[i++] = swstats->soft_reset_cnt;
 tmp_stats[i++] = swstats->fifo_full_cnt;
 for (k = 0; k < MAX_RX_RINGS; k++)
  tmp_stats[i++] = swstats->ring_full_cnt[k];
 tmp_stats[i++] = xstats->alarm_transceiver_temp_high;
 tmp_stats[i++] = xstats->alarm_transceiver_temp_low;
 tmp_stats[i++] = xstats->alarm_laser_bias_current_high;
 tmp_stats[i++] = xstats->alarm_laser_bias_current_low;
 tmp_stats[i++] = xstats->alarm_laser_output_power_high;
 tmp_stats[i++] = xstats->alarm_laser_output_power_low;
 tmp_stats[i++] = xstats->warn_transceiver_temp_high;
 tmp_stats[i++] = xstats->warn_transceiver_temp_low;
 tmp_stats[i++] = xstats->warn_laser_bias_current_high;
 tmp_stats[i++] = xstats->warn_laser_bias_current_low;
 tmp_stats[i++] = xstats->warn_laser_output_power_high;
 tmp_stats[i++] = xstats->warn_laser_output_power_low;
 tmp_stats[i++] = swstats->clubbed_frms_cnt;
 tmp_stats[i++] = swstats->sending_both;
 tmp_stats[i++] = swstats->outof_sequence_pkts;
 tmp_stats[i++] = swstats->flush_max_pkts;
 if (swstats->num_aggregations) {
  u64 tmp = swstats->sum_avg_pkts_aggregated;
  int count = 0;




  while (tmp >= swstats->num_aggregations) {
   tmp -= swstats->num_aggregations;
   count++;
  }
  tmp_stats[i++] = count;
 } else
  tmp_stats[i++] = 0;
 tmp_stats[i++] = swstats->mem_alloc_fail_cnt;
 tmp_stats[i++] = swstats->pci_map_fail_cnt;
 tmp_stats[i++] = swstats->watchdog_timer_cnt;
 tmp_stats[i++] = swstats->mem_allocated;
 tmp_stats[i++] = swstats->mem_freed;
 tmp_stats[i++] = swstats->link_up_cnt;
 tmp_stats[i++] = swstats->link_down_cnt;
 tmp_stats[i++] = swstats->link_up_time;
 tmp_stats[i++] = swstats->link_down_time;

 tmp_stats[i++] = swstats->tx_buf_abort_cnt;
 tmp_stats[i++] = swstats->tx_desc_abort_cnt;
 tmp_stats[i++] = swstats->tx_parity_err_cnt;
 tmp_stats[i++] = swstats->tx_link_loss_cnt;
 tmp_stats[i++] = swstats->tx_list_proc_err_cnt;

 tmp_stats[i++] = swstats->rx_parity_err_cnt;
 tmp_stats[i++] = swstats->rx_abort_cnt;
 tmp_stats[i++] = swstats->rx_parity_abort_cnt;
 tmp_stats[i++] = swstats->rx_rda_fail_cnt;
 tmp_stats[i++] = swstats->rx_unkn_prot_cnt;
 tmp_stats[i++] = swstats->rx_fcs_err_cnt;
 tmp_stats[i++] = swstats->rx_buf_size_err_cnt;
 tmp_stats[i++] = swstats->rx_rxd_corrupt_cnt;
 tmp_stats[i++] = swstats->rx_unkn_err_cnt;
 tmp_stats[i++] = swstats->tda_err_cnt;
 tmp_stats[i++] = swstats->pfc_err_cnt;
 tmp_stats[i++] = swstats->pcc_err_cnt;
 tmp_stats[i++] = swstats->tti_err_cnt;
 tmp_stats[i++] = swstats->tpa_err_cnt;
 tmp_stats[i++] = swstats->sm_err_cnt;
 tmp_stats[i++] = swstats->lso_err_cnt;
 tmp_stats[i++] = swstats->mac_tmac_err_cnt;
 tmp_stats[i++] = swstats->mac_rmac_err_cnt;
 tmp_stats[i++] = swstats->xgxs_txgxs_err_cnt;
 tmp_stats[i++] = swstats->xgxs_rxgxs_err_cnt;
 tmp_stats[i++] = swstats->rc_err_cnt;
 tmp_stats[i++] = swstats->prc_pcix_err_cnt;
 tmp_stats[i++] = swstats->rpa_err_cnt;
 tmp_stats[i++] = swstats->rda_err_cnt;
 tmp_stats[i++] = swstats->rti_err_cnt;
 tmp_stats[i++] = swstats->mc_err_cnt;
}
