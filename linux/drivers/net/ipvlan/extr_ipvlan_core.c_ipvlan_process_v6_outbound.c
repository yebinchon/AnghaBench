
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int NET_XMIT_DROP ;

__attribute__((used)) static int ipvlan_process_v6_outbound(struct sk_buff *skb)
{
 return NET_XMIT_DROP;
}
