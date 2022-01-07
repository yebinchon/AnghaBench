
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union l4_hdr_info {TYPE_1__* udp; int hdr; } ;
struct sk_buff {int encapsulation; } ;
struct TYPE_2__ {scalar_t__ dest; } ;


 int IANA_VXLAN_UDP_PORT ;
 scalar_t__ htons (int ) ;
 int skb_checksum_help (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static bool hns3_tunnel_csum_bug(struct sk_buff *skb)
{
 union l4_hdr_info l4;

 l4.hdr = skb_transport_header(skb);

 if (!(!skb->encapsulation &&
       l4.udp->dest == htons(IANA_VXLAN_UDP_PORT)))
  return 0;

 skb_checksum_help(skb);

 return 1;
}
