
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int version; } ;


 int ETH_P_IP ;
 scalar_t__ htons (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;

__attribute__((used)) static inline bool is_ipv4_pkt(struct sk_buff *skb)
{
 return skb->protocol == htons(ETH_P_IP) && ip_hdr(skb)->version == 4;
}
