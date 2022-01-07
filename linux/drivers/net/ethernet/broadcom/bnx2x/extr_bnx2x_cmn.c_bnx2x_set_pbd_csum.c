
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct udphdr {int dummy; } ;
struct sk_buff {int data; scalar_t__ protocol; } ;
struct eth_tx_parse_bd_e1x {int ip_hlen_w; int tcp_pseudo_csum; void* total_hlen_w; void* global_data; } ;
struct bnx2x {int dummy; } ;
typedef int s8 ;
struct TYPE_2__ {int check; } ;


 int DP (int ,char*,int ,...) ;
 int ETH_P_8021Q ;
 int ETH_TX_PARSE_BD_E1X_LLC_SNAP_EN_SHIFT ;
 int NETIF_MSG_TX_QUEUED ;
 int SKB_CS (struct sk_buff*) ;
 int SKB_CS_OFF (struct sk_buff*) ;
 int XMIT_CSUM_TCP ;
 int bnx2x_csum_fix (int,int ,int ) ;
 int bswab16 (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;
 TYPE_1__* tcp_hdr (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static u8 bnx2x_set_pbd_csum(struct bnx2x *bp, struct sk_buff *skb,
        struct eth_tx_parse_bd_e1x *pbd,
        u32 xmit_type)
{
 u8 hlen = (skb_network_header(skb) - skb->data) >> 1;


 pbd->global_data =
  cpu_to_le16(hlen |
       ((skb->protocol == cpu_to_be16(ETH_P_8021Q)) <<
        ETH_TX_PARSE_BD_E1X_LLC_SNAP_EN_SHIFT));

 pbd->ip_hlen_w = (skb_transport_header(skb) -
   skb_network_header(skb)) >> 1;

 hlen += pbd->ip_hlen_w;


 if (xmit_type & XMIT_CSUM_TCP)
  hlen += tcp_hdrlen(skb) / 2;
 else
  hlen += sizeof(struct udphdr) / 2;

 pbd->total_hlen_w = cpu_to_le16(hlen);
 hlen = hlen*2;

 if (xmit_type & XMIT_CSUM_TCP) {
  pbd->tcp_pseudo_csum = bswab16(tcp_hdr(skb)->check);

 } else {
  s8 fix = SKB_CS_OFF(skb);

  DP(NETIF_MSG_TX_QUEUED,
     "hlen %d  fix %d  csum before fix %x\n",
     le16_to_cpu(pbd->total_hlen_w), fix, SKB_CS(skb));


  pbd->tcp_pseudo_csum =
   bnx2x_csum_fix(skb_transport_header(skb),
           SKB_CS(skb), fix);

  DP(NETIF_MSG_TX_QUEUED, "csum after fix %x\n",
     pbd->tcp_pseudo_csum);
 }

 return hlen;
}
