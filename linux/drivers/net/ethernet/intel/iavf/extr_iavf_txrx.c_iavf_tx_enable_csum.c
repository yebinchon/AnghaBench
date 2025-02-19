
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct udphdr {int dummy; } ;
struct tcphdr {int doff; } ;
struct sk_buff {scalar_t__ ip_summed; unsigned char* data; scalar_t__ encapsulation; } ;
struct sctphdr {int dummy; } ;
struct ipv6hdr {int nexthdr; int version; } ;
struct iphdr {int protocol; int version; } ;
struct iavf_ring {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int gso_type; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int IAVF_TXD_CTX_GRE_TUNNELING ;
 int IAVF_TXD_CTX_QW0_EXT_IPLEN_SHIFT ;
 int IAVF_TXD_CTX_QW0_L4T_CS_MASK ;
 int IAVF_TXD_CTX_QW0_NATLEN_SHIFT ;
 int IAVF_TXD_CTX_UDP_TUNNELING ;
 int IAVF_TX_CTX_EXT_IP_IPV4 ;
 int IAVF_TX_CTX_EXT_IP_IPV4_NO_CSUM ;
 int IAVF_TX_CTX_EXT_IP_IPV6 ;
 int IAVF_TX_DESC_CMD_IIPT_IPV4 ;
 int IAVF_TX_DESC_CMD_IIPT_IPV4_CSUM ;
 int IAVF_TX_DESC_CMD_IIPT_IPV6 ;
 int IAVF_TX_DESC_CMD_L4T_EOFT_SCTP ;
 int IAVF_TX_DESC_CMD_L4T_EOFT_TCP ;
 int IAVF_TX_DESC_CMD_L4T_EOFT_UDP ;
 int IAVF_TX_DESC_LENGTH_IPLEN_SHIFT ;
 int IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT ;
 int IAVF_TX_DESC_LENGTH_MACLEN_SHIFT ;
 int IAVF_TX_FLAGS_IPV4 ;
 int IAVF_TX_FLAGS_IPV6 ;
 int IAVF_TX_FLAGS_TSO ;
 int IAVF_TX_FLAGS_VXLAN_TUNNEL ;






 int SKB_GSO_PARTIAL ;
 int SKB_GSO_UDP_TUNNEL_CSUM ;
 int ipv6_skip_exthdr (struct sk_buff*,int,int*,int *) ;
 int skb_checksum_help (struct sk_buff*) ;
 void* skb_inner_network_header (struct sk_buff*) ;
 unsigned char* skb_inner_transport_header (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 unsigned char* skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static int iavf_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
          u32 *td_cmd, u32 *td_offset,
          struct iavf_ring *tx_ring,
          u32 *cd_tunneling)
{
 union {
  struct iphdr *v4;
  struct ipv6hdr *v6;
  unsigned char *hdr;
 } ip;
 union {
  struct tcphdr *tcp;
  struct udphdr *udp;
  unsigned char *hdr;
 } l4;
 unsigned char *exthdr;
 u32 offset, cmd = 0;
 __be16 frag_off;
 u8 l4_proto = 0;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 ip.hdr = skb_network_header(skb);
 l4.hdr = skb_transport_header(skb);


 offset = ((ip.hdr - skb->data) / 2) << IAVF_TX_DESC_LENGTH_MACLEN_SHIFT;

 if (skb->encapsulation) {
  u32 tunnel = 0;

  if (*tx_flags & IAVF_TX_FLAGS_IPV4) {
   tunnel |= (*tx_flags & IAVF_TX_FLAGS_TSO) ?
      IAVF_TX_CTX_EXT_IP_IPV4 :
      IAVF_TX_CTX_EXT_IP_IPV4_NO_CSUM;

   l4_proto = ip.v4->protocol;
  } else if (*tx_flags & IAVF_TX_FLAGS_IPV6) {
   tunnel |= IAVF_TX_CTX_EXT_IP_IPV6;

   exthdr = ip.hdr + sizeof(*ip.v6);
   l4_proto = ip.v6->nexthdr;
   if (l4.hdr != exthdr)
    ipv6_skip_exthdr(skb, exthdr - skb->data,
       &l4_proto, &frag_off);
  }


  switch (l4_proto) {
  case 128:
   tunnel |= IAVF_TXD_CTX_UDP_TUNNELING;
   *tx_flags |= IAVF_TX_FLAGS_VXLAN_TUNNEL;
   break;
  case 133:
   tunnel |= IAVF_TXD_CTX_GRE_TUNNELING;
   *tx_flags |= IAVF_TX_FLAGS_VXLAN_TUNNEL;
   break;
  case 132:
  case 131:
   *tx_flags |= IAVF_TX_FLAGS_VXLAN_TUNNEL;
   l4.hdr = skb_inner_network_header(skb);
   break;
  default:
   if (*tx_flags & IAVF_TX_FLAGS_TSO)
    return -1;

   skb_checksum_help(skb);
   return 0;
  }


  tunnel |= ((l4.hdr - ip.hdr) / 4) <<
     IAVF_TXD_CTX_QW0_EXT_IPLEN_SHIFT;


  ip.hdr = skb_inner_network_header(skb);


  tunnel |= ((ip.hdr - l4.hdr) / 2) <<
     IAVF_TXD_CTX_QW0_NATLEN_SHIFT;


  if ((*tx_flags & IAVF_TX_FLAGS_TSO) &&
      !(skb_shinfo(skb)->gso_type & SKB_GSO_PARTIAL) &&
      (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_TUNNEL_CSUM))
   tunnel |= IAVF_TXD_CTX_QW0_L4T_CS_MASK;


  *cd_tunneling |= tunnel;


  l4.hdr = skb_inner_transport_header(skb);
  l4_proto = 0;


  *tx_flags &= ~(IAVF_TX_FLAGS_IPV4 | IAVF_TX_FLAGS_IPV6);
  if (ip.v4->version == 4)
   *tx_flags |= IAVF_TX_FLAGS_IPV4;
  if (ip.v6->version == 6)
   *tx_flags |= IAVF_TX_FLAGS_IPV6;
 }


 if (*tx_flags & IAVF_TX_FLAGS_IPV4) {
  l4_proto = ip.v4->protocol;



  cmd |= (*tx_flags & IAVF_TX_FLAGS_TSO) ?
         IAVF_TX_DESC_CMD_IIPT_IPV4_CSUM :
         IAVF_TX_DESC_CMD_IIPT_IPV4;
 } else if (*tx_flags & IAVF_TX_FLAGS_IPV6) {
  cmd |= IAVF_TX_DESC_CMD_IIPT_IPV6;

  exthdr = ip.hdr + sizeof(*ip.v6);
  l4_proto = ip.v6->nexthdr;
  if (l4.hdr != exthdr)
   ipv6_skip_exthdr(skb, exthdr - skb->data,
      &l4_proto, &frag_off);
 }


 offset |= ((l4.hdr - ip.hdr) / 4) << IAVF_TX_DESC_LENGTH_IPLEN_SHIFT;


 switch (l4_proto) {
 case 129:

  cmd |= IAVF_TX_DESC_CMD_L4T_EOFT_TCP;
  offset |= l4.tcp->doff << IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
  break;
 case 130:

  cmd |= IAVF_TX_DESC_CMD_L4T_EOFT_SCTP;
  offset |= (sizeof(struct sctphdr) >> 2) <<
     IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
  break;
 case 128:

  cmd |= IAVF_TX_DESC_CMD_L4T_EOFT_UDP;
  offset |= (sizeof(struct udphdr) >> 2) <<
     IAVF_TX_DESC_LENGTH_L4_FC_LEN_SHIFT;
  break;
 default:
  if (*tx_flags & IAVF_TX_FLAGS_TSO)
   return -1;
  skb_checksum_help(skb);
  return 0;
 }

 *td_cmd |= cmd;
 *td_offset |= offset;

 return 1;
}
