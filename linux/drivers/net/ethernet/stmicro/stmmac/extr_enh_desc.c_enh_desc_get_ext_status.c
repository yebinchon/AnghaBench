
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_extra_stats {int l3_l4_filter_no_match; int l4_filter_match; int l3_filter_match; int vlan_tag_priority_val; int av_tagged_pkt_rcvd; int av_pkt_rcvd; int timestamp_dropped; int ptp_ver; int ptp_frame_type; int ptp_rx_msg_pkt_reserved_type; int ptp_rx_msg_type_management; int ptp_rx_msg_type_announce; int ptp_rx_msg_type_pdelay_follow_up; int ptp_rx_msg_type_pdelay_resp; int ptp_rx_msg_type_pdelay_req; int ptp_rx_msg_type_delay_resp; int ptp_rx_msg_type_delay_req; int ptp_rx_msg_type_follow_up; int ptp_rx_msg_type_sync; int no_ptp_rx_msg_type_ext; int ipv6_pkt_rcvd; int ipv4_pkt_rcvd; int ip_csum_bypassed; int ip_payload_err; int ip_hdr_err; } ;
struct TYPE_2__ {int des0; } ;
struct dma_extended_desc {int des4; TYPE_1__ basic; } ;


 unsigned int ERDES0_RX_MAC_ADDR ;
 unsigned int ERDES4_AV_PKT_RCVD ;
 unsigned int ERDES4_AV_TAGGED_PKT_RCVD ;
 unsigned int ERDES4_IPV4_PKT_RCVD ;
 unsigned int ERDES4_IPV6_PKT_RCVD ;
 unsigned int ERDES4_IP_CSUM_BYPASSED ;
 unsigned int ERDES4_IP_HDR_ERR ;
 unsigned int ERDES4_IP_PAYLOAD_ERR ;
 unsigned int ERDES4_L3_FILTER_MATCH ;
 unsigned int ERDES4_L3_L4_FILT_NO_MATCH_MASK ;
 unsigned int ERDES4_L4_FILTER_MATCH ;
 unsigned int ERDES4_MSG_TYPE_MASK ;
 unsigned int ERDES4_PTP_FRAME_TYPE ;
 unsigned int ERDES4_PTP_VER ;
 unsigned int ERDES4_TIMESTAMP_DROPPED ;
 unsigned int ERDES4_VLAN_TAG_PRI_VAL_MASK ;
 int RDES_EXT_DELAY_REQ ;
 int RDES_EXT_DELAY_RESP ;
 int RDES_EXT_FOLLOW_UP ;
 int RDES_EXT_NO_PTP ;
 int RDES_EXT_PDELAY_FOLLOW_UP ;
 int RDES_EXT_PDELAY_REQ ;
 int RDES_EXT_PDELAY_RESP ;
 int RDES_EXT_SYNC ;
 int RDES_PTP_ANNOUNCE ;
 int RDES_PTP_MANAGEMENT ;
 int RDES_PTP_PKT_RESERVED_TYPE ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void enh_desc_get_ext_status(void *data, struct stmmac_extra_stats *x,
        struct dma_extended_desc *p)
{
 unsigned int rdes0 = le32_to_cpu(p->basic.des0);
 unsigned int rdes4 = le32_to_cpu(p->des4);

 if (unlikely(rdes0 & ERDES0_RX_MAC_ADDR)) {
  int message_type = (rdes4 & ERDES4_MSG_TYPE_MASK) >> 8;

  if (rdes4 & ERDES4_IP_HDR_ERR)
   x->ip_hdr_err++;
  if (rdes4 & ERDES4_IP_PAYLOAD_ERR)
   x->ip_payload_err++;
  if (rdes4 & ERDES4_IP_CSUM_BYPASSED)
   x->ip_csum_bypassed++;
  if (rdes4 & ERDES4_IPV4_PKT_RCVD)
   x->ipv4_pkt_rcvd++;
  if (rdes4 & ERDES4_IPV6_PKT_RCVD)
   x->ipv6_pkt_rcvd++;

  if (message_type == RDES_EXT_NO_PTP)
   x->no_ptp_rx_msg_type_ext++;
  else if (message_type == RDES_EXT_SYNC)
   x->ptp_rx_msg_type_sync++;
  else if (message_type == RDES_EXT_FOLLOW_UP)
   x->ptp_rx_msg_type_follow_up++;
  else if (message_type == RDES_EXT_DELAY_REQ)
   x->ptp_rx_msg_type_delay_req++;
  else if (message_type == RDES_EXT_DELAY_RESP)
   x->ptp_rx_msg_type_delay_resp++;
  else if (message_type == RDES_EXT_PDELAY_REQ)
   x->ptp_rx_msg_type_pdelay_req++;
  else if (message_type == RDES_EXT_PDELAY_RESP)
   x->ptp_rx_msg_type_pdelay_resp++;
  else if (message_type == RDES_EXT_PDELAY_FOLLOW_UP)
   x->ptp_rx_msg_type_pdelay_follow_up++;
  else if (message_type == RDES_PTP_ANNOUNCE)
   x->ptp_rx_msg_type_announce++;
  else if (message_type == RDES_PTP_MANAGEMENT)
   x->ptp_rx_msg_type_management++;
  else if (message_type == RDES_PTP_PKT_RESERVED_TYPE)
   x->ptp_rx_msg_pkt_reserved_type++;

  if (rdes4 & ERDES4_PTP_FRAME_TYPE)
   x->ptp_frame_type++;
  if (rdes4 & ERDES4_PTP_VER)
   x->ptp_ver++;
  if (rdes4 & ERDES4_TIMESTAMP_DROPPED)
   x->timestamp_dropped++;
  if (rdes4 & ERDES4_AV_PKT_RCVD)
   x->av_pkt_rcvd++;
  if (rdes4 & ERDES4_AV_TAGGED_PKT_RCVD)
   x->av_tagged_pkt_rcvd++;
  if ((rdes4 & ERDES4_VLAN_TAG_PRI_VAL_MASK) >> 18)
   x->vlan_tag_priority_val++;
  if (rdes4 & ERDES4_L3_FILTER_MATCH)
   x->l3_filter_match++;
  if (rdes4 & ERDES4_L4_FILTER_MATCH)
   x->l4_filter_match++;
  if ((rdes4 & ERDES4_L3_L4_FILT_NO_MATCH_MASK) >> 26)
   x->l3_l4_filter_no_match++;
 }
}
