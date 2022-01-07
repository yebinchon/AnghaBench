
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ protocol; } ;
struct iphdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; int ihl; } ;
struct TYPE_3__ {int check; } ;


 scalar_t__ ETH_HLEN ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ htons (int ) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_set_transport_header (struct sk_buff*,scalar_t__) ;
 TYPE_1__* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static u16
jme_udpsum(struct sk_buff *skb)
{
 u16 csum = 0xFFFFu;

 if (skb->len < (ETH_HLEN + sizeof(struct iphdr)))
  return csum;
 if (skb->protocol != htons(ETH_P_IP))
  return csum;
 skb_set_network_header(skb, ETH_HLEN);
 if ((ip_hdr(skb)->protocol != IPPROTO_UDP) ||
     (skb->len < (ETH_HLEN +
   (ip_hdr(skb)->ihl << 2) +
   sizeof(struct udphdr)))) {
  skb_reset_network_header(skb);
  return csum;
 }
 skb_set_transport_header(skb,
   ETH_HLEN + (ip_hdr(skb)->ihl << 2));
 csum = udp_hdr(skb)->check;
 skb_reset_transport_header(skb);
 skb_reset_network_header(skb);

 return csum;
}
