
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int ip_summed; scalar_t__ csum; } ;
struct mvpp2_port {int dummy; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int MVPP2_RXD_IP4_HEADER_ERR ;
 int MVPP2_RXD_L3_IP4 ;
 int MVPP2_RXD_L3_IP6 ;
 int MVPP2_RXD_L4_CSUM_OK ;
 int MVPP2_RXD_L4_TCP ;
 int MVPP2_RXD_L4_UDP ;

__attribute__((used)) static void mvpp2_rx_csum(struct mvpp2_port *port, u32 status,
     struct sk_buff *skb)
{
 if (((status & MVPP2_RXD_L3_IP4) &&
      !(status & MVPP2_RXD_IP4_HEADER_ERR)) ||
     (status & MVPP2_RXD_L3_IP6))
  if (((status & MVPP2_RXD_L4_UDP) ||
       (status & MVPP2_RXD_L4_TCP)) &&
       (status & MVPP2_RXD_L4_CSUM_OK)) {
   skb->csum = 0;
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   return;
  }

 skb->ip_summed = CHECKSUM_NONE;
}
