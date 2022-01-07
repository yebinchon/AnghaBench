
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {TYPE_1__* drv_stats; int netdev; } ;
struct cqe_rx_t {int err_opcode; int err_level; } ;
struct TYPE_2__ {int rx_truncated_pkts; int rx_l4_pclp; int rx_tcp_offset_errs; int rx_tcp_flag_errs; int rx_l4_port_errs; int rx_udp_len_errs; int rx_l4_csum_errs; int rx_l4_malformed; int rx_l3_pclp; int rx_ip_ttl_errs; int rx_ip_payload_malformed; int rx_ip_hdr_malformed; int rx_ip_csum_errs; int rx_ip_ver_errs; int rx_l2_pclp; int rx_l2_len_mismatch; int rx_undersize; int rx_oversize; int rx_l2_hdr_malformed; int rx_prel2_errs; int rx_bgx_errs; int rx_fcs_errs; int rx_jabber_errs; int rx_bgx_truncated_pkts; } ;
 int netif_err (struct nicvf*,int ,int ,char*,int ,int) ;
 int rx_err ;
 int this_cpu_inc (int ) ;

int nicvf_check_cqe_rx_errs(struct nicvf *nic, struct cqe_rx_t *cqe_rx)
{
 netif_err(nic, rx_err, nic->netdev,
    "RX error CQE err_level 0x%x err_opcode 0x%x\n",
    cqe_rx->err_level, cqe_rx->err_opcode);

 switch (cqe_rx->err_opcode) {
 case 132:
  this_cpu_inc(nic->drv_stats->rx_bgx_truncated_pkts);
  break;
 case 133:
  this_cpu_inc(nic->drv_stats->rx_jabber_errs);
  break;
 case 134:
  this_cpu_inc(nic->drv_stats->rx_fcs_errs);
  break;
 case 131:
  this_cpu_inc(nic->drv_stats->rx_bgx_errs);
  break;
 case 136:
  this_cpu_inc(nic->drv_stats->rx_prel2_errs);
  break;
 case 145:
  this_cpu_inc(nic->drv_stats->rx_l2_hdr_malformed);
  break;
 case 144:
  this_cpu_inc(nic->drv_stats->rx_oversize);
  break;
 case 142:
  this_cpu_inc(nic->drv_stats->rx_undersize);
  break;
 case 146:
  this_cpu_inc(nic->drv_stats->rx_l2_len_mismatch);
  break;
 case 143:
  this_cpu_inc(nic->drv_stats->rx_l2_pclp);
  break;
 case 147:
  this_cpu_inc(nic->drv_stats->rx_ip_ver_errs);
  break;
 case 151:
  this_cpu_inc(nic->drv_stats->rx_ip_csum_errs);
  break;
 case 149:
  this_cpu_inc(nic->drv_stats->rx_ip_hdr_malformed);
  break;
 case 148:
  this_cpu_inc(nic->drv_stats->rx_ip_payload_malformed);
  break;
 case 150:
  this_cpu_inc(nic->drv_stats->rx_ip_ttl_errs);
  break;
 case 141:
  this_cpu_inc(nic->drv_stats->rx_l3_pclp);
  break;
 case 139:
  this_cpu_inc(nic->drv_stats->rx_l4_malformed);
  break;
 case 140:
  this_cpu_inc(nic->drv_stats->rx_l4_csum_errs);
  break;
 case 128:
  this_cpu_inc(nic->drv_stats->rx_udp_len_errs);
  break;
 case 137:
  this_cpu_inc(nic->drv_stats->rx_l4_port_errs);
  break;
 case 130:
  this_cpu_inc(nic->drv_stats->rx_tcp_flag_errs);
  break;
 case 129:
  this_cpu_inc(nic->drv_stats->rx_tcp_offset_errs);
  break;
 case 138:
  this_cpu_inc(nic->drv_stats->rx_l4_pclp);
  break;
 case 135:
  this_cpu_inc(nic->drv_stats->rx_truncated_pkts);
  break;
 }

 return 1;
}
