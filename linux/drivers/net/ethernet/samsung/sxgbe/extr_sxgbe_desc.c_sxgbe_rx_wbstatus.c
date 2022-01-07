
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err_l2_type; int layer34_pkt_type; scalar_t__ l4_filter_match; scalar_t__ l3_filter_match; scalar_t__ hash_filter_pass; scalar_t__ da_filter_fail; scalar_t__ sa_filter_fail; scalar_t__ vlan_filter_match; scalar_t__ err_summary; } ;
struct TYPE_4__ {TYPE_1__ rx_wb_des23; } ;
struct sxgbe_rx_norm_desc {TYPE_2__ rdes23; } ;
struct sxgbe_extra_stats {int l4_filter_match; int l3_filter_match; int hash_filter_pass; int da_filter_fail; int sa_filter_fail; int vlan_filter_match; int ip6_unknown_pkt; int ip6_icmp_pkt; int ip6_udp_pkt; int ip6_tcp_pkt; int ip4_unknown_pkt; int ip4_icmp_pkt; int ip4_udp_pkt; int ip4_tcp_pkt; int not_ip_pkt; int dvlan_ocvlan_icvlan_pkt; int dvlan_osvlan_icvlan_pkt; int dvlan_osvlan_isvlan_pkt; int cvlan_tag_pkt; int svlan_tag_pkt; int other_pkt; int untag_okt; int oam_pkt; int arp_pkt; int dcb_ctl_pkt; int mac_ctl_pkt; int len_pkt; int overflow_error; int ip_payload_err; int ip_hdr_err; int rx_gaint_pkt_err; int rx_crc_err; int rx_watchdog_err; int rx_code_gmii_err; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int sxgbe_rx_wbstatus(struct sxgbe_rx_norm_desc *p,
        struct sxgbe_extra_stats *x, int *checksum)
{
 int status = 0;

 *checksum = CHECKSUM_UNNECESSARY;
 if (p->rdes23.rx_wb_des23.err_summary) {
  switch (p->rdes23.rx_wb_des23.err_l2_type) {
  case 147:
   status = -EINVAL;
   x->rx_code_gmii_err++;
   break;
  case 128:
   status = -EINVAL;
   x->rx_watchdog_err++;
   break;
  case 155:
   status = -EINVAL;
   x->rx_crc_err++;
   break;
  case 148:
   status = -EINVAL;
   x->rx_gaint_pkt_err++;
   break;
  case 138:
   *checksum = CHECKSUM_NONE;
   x->ip_hdr_err++;
   break;
  case 131:
   *checksum = CHECKSUM_NONE;
   x->ip_payload_err++;
   break;
  case 132:
   status = -EINVAL;
   x->overflow_error++;
   break;
  default:
   pr_err("Invalid Error type\n");
   break;
  }
 } else {
  switch (p->rdes23.rx_wb_des23.err_l2_type) {
  case 137:
   x->len_pkt++;
   break;
  case 136:
   x->mac_ctl_pkt++;
   break;
  case 153:
   x->dcb_ctl_pkt++;
   break;
  case 156:
   x->arp_pkt++;
   break;
  case 134:
   x->oam_pkt++;
   break;
  case 129:
   x->untag_okt++;
   break;
  case 133:
   x->other_pkt++;
   break;
  case 130:
   x->svlan_tag_pkt++;
   break;
  case 154:
   x->cvlan_tag_pkt++;
   break;
  case 152:
   x->dvlan_ocvlan_icvlan_pkt++;
   break;
  case 149:
   x->dvlan_osvlan_isvlan_pkt++;
   break;
  case 150:
   x->dvlan_osvlan_icvlan_pkt++;
   break;
  case 151:
   x->dvlan_ocvlan_icvlan_pkt++;
   break;
  default:
   pr_err("Invalid L2 Packet type\n");
   break;
  }
 }


 switch (p->rdes23.rx_wb_des23.layer34_pkt_type) {
 case 135:
  x->not_ip_pkt++;
  break;
 case 145:
  x->ip4_tcp_pkt++;
  break;
 case 144:
  x->ip4_udp_pkt++;
  break;
 case 146:
  x->ip4_icmp_pkt++;
  break;
 case 143:
  x->ip4_unknown_pkt++;
  break;
 case 141:
  x->ip6_tcp_pkt++;
  break;
 case 140:
  x->ip6_udp_pkt++;
  break;
 case 142:
  x->ip6_icmp_pkt++;
  break;
 case 139:
  x->ip6_unknown_pkt++;
  break;
 default:
  pr_err("Invalid L3/L4 Packet type\n");
  break;
 }


 if (p->rdes23.rx_wb_des23.vlan_filter_match)
  x->vlan_filter_match++;

 if (p->rdes23.rx_wb_des23.sa_filter_fail) {
  status = -EINVAL;
  x->sa_filter_fail++;
 }
 if (p->rdes23.rx_wb_des23.da_filter_fail) {
  status = -EINVAL;
  x->da_filter_fail++;
 }
 if (p->rdes23.rx_wb_des23.hash_filter_pass)
  x->hash_filter_pass++;

 if (p->rdes23.rx_wb_des23.l3_filter_match)
  x->l3_filter_match++;

 if (p->rdes23.rx_wb_des23.l4_filter_match)
  x->l4_filter_match++;

 return status;
}
