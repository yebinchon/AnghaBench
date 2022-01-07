
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct arp_pkt {int dummy; } ;


 scalar_t__ skb_network_header (struct sk_buff const*) ;

__attribute__((used)) static inline struct arp_pkt *arp_pkt(const struct sk_buff *skb)
{
 return (struct arp_pkt *)skb_network_header(skb);
}
