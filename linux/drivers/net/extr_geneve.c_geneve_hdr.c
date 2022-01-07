
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genevehdr {int dummy; } ;


 scalar_t__ udp_hdr (struct sk_buff const*) ;

__attribute__((used)) static inline struct genevehdr *geneve_hdr(const struct sk_buff *skb)
{
 return (struct genevehdr *)(udp_hdr(skb) + 1);
}
