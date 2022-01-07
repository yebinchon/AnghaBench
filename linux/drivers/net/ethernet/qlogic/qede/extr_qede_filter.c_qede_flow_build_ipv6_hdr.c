
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct qede_arfs_tuple {scalar_t__ ip_proto; int dst_port; int src_port; int dst_ipv6; int src_ipv6; int eth_proto; } ;
struct ipv6hdr {int version; void* payload_len; int nexthdr; int daddr; int saddr; } ;
struct in6_addr {int dummy; } ;
struct ethhdr {int h_proto; } ;
typedef int __be16 ;


 int ETH_HLEN ;
 scalar_t__ IPPROTO_TCP ;
 int NEXTHDR_TCP ;
 int NEXTHDR_UDP ;
 void* cpu_to_be16 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void qede_flow_build_ipv6_hdr(struct qede_arfs_tuple *t,
         void *header)
{
 __be16 *ports = (__be16 *)(header + ETH_HLEN + sizeof(struct ipv6hdr));
 struct ipv6hdr *ip6 = (struct ipv6hdr *)(header + ETH_HLEN);
 struct ethhdr *eth = (struct ethhdr *)header;

 eth->h_proto = t->eth_proto;
 memcpy(&ip6->saddr, &t->src_ipv6, sizeof(struct in6_addr));
 memcpy(&ip6->daddr, &t->dst_ipv6, sizeof(struct in6_addr));
 ip6->version = 0x6;

 if (t->ip_proto == IPPROTO_TCP) {
  ip6->nexthdr = NEXTHDR_TCP;
  ip6->payload_len = cpu_to_be16(sizeof(struct tcphdr));
 } else {
  ip6->nexthdr = NEXTHDR_UDP;
  ip6->payload_len = cpu_to_be16(sizeof(struct udphdr));
 }


 ports[0] = t->src_port;
 ports[1] = t->dst_port;
}
