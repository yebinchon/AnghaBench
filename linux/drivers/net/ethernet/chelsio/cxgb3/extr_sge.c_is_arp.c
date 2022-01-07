
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_ARP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static inline int is_arp(struct sk_buff *skb)
{
 return skb->protocol == htons(ETH_P_ARP);
}
