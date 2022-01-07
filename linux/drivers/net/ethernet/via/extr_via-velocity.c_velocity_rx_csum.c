
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ip_summed; } ;
struct TYPE_2__ {int CSM; } ;
struct rx_desc {TYPE_1__ rdesc1; } ;


 int CHECKSUM_UNNECESSARY ;
 int CSM_IPKT ;
 int CSM_IPOK ;
 int CSM_TCPKT ;
 int CSM_TUPOK ;
 int CSM_UDPKT ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void velocity_rx_csum(struct rx_desc *rd, struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);

 if (rd->rdesc1.CSM & CSM_IPKT) {
  if (rd->rdesc1.CSM & CSM_IPOK) {
   if ((rd->rdesc1.CSM & CSM_TCPKT) ||
     (rd->rdesc1.CSM & CSM_UDPKT)) {
    if (!(rd->rdesc1.CSM & CSM_TUPOK))
     return;
   }
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  }
 }
}
