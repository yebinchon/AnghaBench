
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {int info1; } ;
struct TYPE_6__ {TYPE_2__ common; } ;
struct TYPE_4__ {int flags; } ;
struct htt_rx_desc {TYPE_3__ msdu_start; TYPE_1__ attention; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int RX_ATTENTION_FLAGS_IP_CHKSUM_FAIL ;
 int RX_ATTENTION_FLAGS_TCP_UDP_CHKSUM_FAIL ;
 int RX_MSDU_START_INFO1_IPV4_PROTO ;
 int RX_MSDU_START_INFO1_IPV6_PROTO ;
 int RX_MSDU_START_INFO1_TCP_PROTO ;
 int RX_MSDU_START_INFO1_UDP_PROTO ;
 int __le32_to_cpu (int ) ;

__attribute__((used)) static int ath10k_htt_rx_get_csum_state(struct sk_buff *skb)
{
 struct htt_rx_desc *rxd;
 u32 flags, info;
 bool is_ip4, is_ip6;
 bool is_tcp, is_udp;
 bool ip_csum_ok, tcpudp_csum_ok;

 rxd = (void *)skb->data - sizeof(*rxd);
 flags = __le32_to_cpu(rxd->attention.flags);
 info = __le32_to_cpu(rxd->msdu_start.common.info1);

 is_ip4 = !!(info & RX_MSDU_START_INFO1_IPV4_PROTO);
 is_ip6 = !!(info & RX_MSDU_START_INFO1_IPV6_PROTO);
 is_tcp = !!(info & RX_MSDU_START_INFO1_TCP_PROTO);
 is_udp = !!(info & RX_MSDU_START_INFO1_UDP_PROTO);
 ip_csum_ok = !(flags & RX_ATTENTION_FLAGS_IP_CHKSUM_FAIL);
 tcpudp_csum_ok = !(flags & RX_ATTENTION_FLAGS_TCP_UDP_CHKSUM_FAIL);

 if (!is_ip4 && !is_ip6)
  return CHECKSUM_NONE;
 if (!is_tcp && !is_udp)
  return CHECKSUM_NONE;
 if (!ip_csum_ok)
  return CHECKSUM_NONE;
 if (!tcpudp_csum_ok)
  return CHECKSUM_NONE;

 return CHECKSUM_UNNECESSARY;
}
