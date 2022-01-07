
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int * h_source; } ;



__attribute__((used)) static inline u8 *wil_skb_get_sa(struct sk_buff *skb)
{
 struct ethhdr *eth = (void *)skb->data;

 return eth->h_source;
}
