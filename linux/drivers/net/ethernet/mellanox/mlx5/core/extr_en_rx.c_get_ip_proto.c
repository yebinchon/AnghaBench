
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {void* data; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int protocol; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_IP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static u8 get_ip_proto(struct sk_buff *skb, int network_depth, __be16 proto)
{
 void *ip_p = skb->data + network_depth;

 return (proto == htons(ETH_P_IP)) ? ((struct iphdr *)ip_p)->protocol :
         ((struct ipv6hdr *)ip_p)->nexthdr;
}
