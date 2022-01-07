
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
typedef int rx_handler_result_t ;
struct TYPE_2__ {unsigned char* h_dest; } ;


 int ETH_P_SLOW ;
 int RX_HANDLER_ANOTHER ;
 int RX_HANDLER_EXACT ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ is_link_local_ether_addr (unsigned char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static rx_handler_result_t lb_receive(struct team *team, struct team_port *port,
          struct sk_buff *skb)
{
 if (unlikely(skb->protocol == htons(ETH_P_SLOW))) {

  const unsigned char *dest = eth_hdr(skb)->h_dest;

  if (is_link_local_ether_addr(dest) && dest[5] == 0x02)
   return RX_HANDLER_EXACT;
 }
 return RX_HANDLER_ANOTHER;
}
