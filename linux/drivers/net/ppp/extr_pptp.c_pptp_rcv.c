
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ protocol; int flags; } ;
struct pptp_gre_header {int call_id; TYPE_1__ gre_hd; } ;
struct pppox_sock {int dummy; } ;
struct iphdr {int saddr; } ;


 int GRE_FLAGS ;
 scalar_t__ GRE_IS_CSUM (int) ;
 int GRE_IS_KEY (int) ;
 scalar_t__ GRE_IS_ROUTING (int) ;
 scalar_t__ GRE_PROTO_PPP ;
 int NET_RX_DROP ;
 scalar_t__ PACKET_HOST ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct pppox_sock* lookup_chan (int ,int ) ;
 int nf_reset_ct (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int sk_pppox (struct pppox_sock*) ;
 int sk_receive_skb (int ,struct sk_buff*,int ) ;
 int skb_dst_drop (struct sk_buff*) ;

__attribute__((used)) static int pptp_rcv(struct sk_buff *skb)
{
 struct pppox_sock *po;
 struct pptp_gre_header *header;
 struct iphdr *iph;

 if (skb->pkt_type != PACKET_HOST)
  goto drop;

 if (!pskb_may_pull(skb, 12))
  goto drop;

 iph = ip_hdr(skb);

 header = (struct pptp_gre_header *)skb->data;

 if (header->gre_hd.protocol != GRE_PROTO_PPP ||
  GRE_IS_CSUM(header->gre_hd.flags) ||
  GRE_IS_ROUTING(header->gre_hd.flags) ||
  !GRE_IS_KEY(header->gre_hd.flags) ||
  (header->gre_hd.flags & GRE_FLAGS))

  goto drop;

 po = lookup_chan(htons(header->call_id), iph->saddr);
 if (po) {
  skb_dst_drop(skb);
  nf_reset_ct(skb);
  return sk_receive_skb(sk_pppox(po), skb, 0);
 }
drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
