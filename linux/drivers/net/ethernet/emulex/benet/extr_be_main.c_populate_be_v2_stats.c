
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_rxf_stats_v2 {int rx_drops_too_many_frags; int rx_drops_no_tpre_descr; int rx_drops_mtu; int forwarded_packets; int rx_drops_no_erx_descr; int rx_drops_no_pbuf; struct be_port_rxf_stats_v2* port; } ;
struct be_port_rxf_stats_v2 {int roce_drops_payload_len; int roce_drops_crc; int roce_frames_received; int roce_bytes_received_msd; int roce_bytes_received_lsd; int jabber_events; int tx_priority_pauseframes; int tx_controlframes; int tx_pauseframes; int rxpp_fifo_overflow_drop; int rx_alignment_symbol_errors; int rx_address_filtered; int rx_input_fifo_overflow_drop; int rx_dropped_header_too_small; int rx_out_range_errors; int rx_dropped_too_short; int rx_dropped_too_small; int rx_dropped_tcp_length; int rx_udp_checksum_errs; int rx_tcp_checksum_errs; int rx_ip_checksum_errs; int rx_dropped_runt; int rx_frame_too_long; int rx_in_range_errors; int rx_control_frames; int rx_crc_errors; int rx_pause_frames; int rx_priority_pause_frames; int pmem_fifo_overflow_drop; } ;
struct be_pmem_stats {int eth_red_drops; } ;
struct be_hw_stats_v2 {struct be_rxf_stats_v2 rxf; struct be_pmem_stats pmem; } ;
struct be_drv_stats {int roce_drops_payload_len; int roce_drops_crc; int rx_roce_frames; int rx_roce_bytes_msd; int rx_roce_bytes_lsd; int eth_red_drops; int rx_drops_too_many_frags; int rx_drops_no_tpre_descr; int rx_drops_mtu; int forwarded_packets; int rx_drops_no_erx_descr; int rx_drops_no_pbuf; int jabber_events; int tx_priority_pauseframes; int tx_controlframes; int tx_pauseframes; int rxpp_fifo_overflow_drop; int rx_alignment_symbol_errors; int rx_address_filtered; int rx_input_fifo_overflow_drop; int rx_dropped_header_too_small; int rx_out_range_errors; int rx_dropped_too_short; int rx_dropped_too_small; int rx_dropped_tcp_length; int rx_udp_checksum_errs; int rx_tcp_checksum_errs; int rx_ip_checksum_errs; int rx_dropped_runt; int rx_frame_too_long; int rx_in_range_errors; int rx_control_frames; int rx_crc_errors; int rx_pause_frames; int rx_priority_pause_frames; int pmem_fifo_overflow_drop; } ;
struct be_adapter {size_t port_num; struct be_drv_stats drv_stats; } ;


 int be_dws_le_to_cpu (struct be_hw_stats_v2*,int) ;
 scalar_t__ be_roce_supported (struct be_adapter*) ;
 struct be_hw_stats_v2* hw_stats_from_cmd (struct be_adapter*) ;

__attribute__((used)) static void populate_be_v2_stats(struct be_adapter *adapter)
{
 struct be_hw_stats_v2 *hw_stats = hw_stats_from_cmd(adapter);
 struct be_pmem_stats *pmem_sts = &hw_stats->pmem;
 struct be_rxf_stats_v2 *rxf_stats = &hw_stats->rxf;
 struct be_port_rxf_stats_v2 *port_stats =
     &rxf_stats->port[adapter->port_num];
 struct be_drv_stats *drvs = &adapter->drv_stats;

 be_dws_le_to_cpu(hw_stats, sizeof(*hw_stats));
 drvs->pmem_fifo_overflow_drop = port_stats->pmem_fifo_overflow_drop;
 drvs->rx_priority_pause_frames = port_stats->rx_priority_pause_frames;
 drvs->rx_pause_frames = port_stats->rx_pause_frames;
 drvs->rx_crc_errors = port_stats->rx_crc_errors;
 drvs->rx_control_frames = port_stats->rx_control_frames;
 drvs->rx_in_range_errors = port_stats->rx_in_range_errors;
 drvs->rx_frame_too_long = port_stats->rx_frame_too_long;
 drvs->rx_dropped_runt = port_stats->rx_dropped_runt;
 drvs->rx_ip_checksum_errs = port_stats->rx_ip_checksum_errs;
 drvs->rx_tcp_checksum_errs = port_stats->rx_tcp_checksum_errs;
 drvs->rx_udp_checksum_errs = port_stats->rx_udp_checksum_errs;
 drvs->rx_dropped_tcp_length = port_stats->rx_dropped_tcp_length;
 drvs->rx_dropped_too_small = port_stats->rx_dropped_too_small;
 drvs->rx_dropped_too_short = port_stats->rx_dropped_too_short;
 drvs->rx_out_range_errors = port_stats->rx_out_range_errors;
 drvs->rx_dropped_header_too_small =
  port_stats->rx_dropped_header_too_small;
 drvs->rx_input_fifo_overflow_drop =
  port_stats->rx_input_fifo_overflow_drop;
 drvs->rx_address_filtered = port_stats->rx_address_filtered;
 drvs->rx_alignment_symbol_errors =
  port_stats->rx_alignment_symbol_errors;
 drvs->rxpp_fifo_overflow_drop = port_stats->rxpp_fifo_overflow_drop;
 drvs->tx_pauseframes = port_stats->tx_pauseframes;
 drvs->tx_controlframes = port_stats->tx_controlframes;
 drvs->tx_priority_pauseframes = port_stats->tx_priority_pauseframes;
 drvs->jabber_events = port_stats->jabber_events;
 drvs->rx_drops_no_pbuf = rxf_stats->rx_drops_no_pbuf;
 drvs->rx_drops_no_erx_descr = rxf_stats->rx_drops_no_erx_descr;
 drvs->forwarded_packets = rxf_stats->forwarded_packets;
 drvs->rx_drops_mtu = rxf_stats->rx_drops_mtu;
 drvs->rx_drops_no_tpre_descr = rxf_stats->rx_drops_no_tpre_descr;
 drvs->rx_drops_too_many_frags = rxf_stats->rx_drops_too_many_frags;
 adapter->drv_stats.eth_red_drops = pmem_sts->eth_red_drops;
 if (be_roce_supported(adapter)) {
  drvs->rx_roce_bytes_lsd = port_stats->roce_bytes_received_lsd;
  drvs->rx_roce_bytes_msd = port_stats->roce_bytes_received_msd;
  drvs->rx_roce_frames = port_stats->roce_frames_received;
  drvs->roce_drops_crc = port_stats->roce_drops_crc;
  drvs->roce_drops_payload_len =
   port_stats->roce_drops_payload_len;
 }
}
