
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int h_proto; } ;


 scalar_t__ ETHER_MIN_PACKET ;
 scalar_t__ INGRESS_PKT_LEN ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int ntohs (int ) ;

__attribute__((used)) static bool xgene_enet_errata_10GE_8(struct sk_buff *skb, u32 len, u8 status)
{
 if (status == INGRESS_PKT_LEN && len == ETHER_MIN_PACKET) {
  if (ntohs(eth_hdr(skb)->h_proto) < 46)
   return 1;
 }

 return 0;
}
