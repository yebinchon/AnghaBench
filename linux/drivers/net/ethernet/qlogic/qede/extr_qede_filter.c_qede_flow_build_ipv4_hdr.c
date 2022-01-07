
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_arfs_tuple {int dst_port; int src_port; int ip_proto; int dst_ipv4; int src_ipv4; int eth_proto; } ;
struct iphdr {int version; int ihl; int tot_len; int protocol; int daddr; int saddr; } ;
struct ethhdr {int h_proto; } ;
typedef int __be16 ;


 int ETH_HLEN ;
 int cpu_to_be16 (int) ;
 int qede_flow_get_min_header_size (struct qede_arfs_tuple*) ;

__attribute__((used)) static void qede_flow_build_ipv4_hdr(struct qede_arfs_tuple *t,
         void *header)
{
 __be16 *ports = (__be16 *)(header + ETH_HLEN + sizeof(struct iphdr));
 struct iphdr *ip = (struct iphdr *)(header + ETH_HLEN);
 struct ethhdr *eth = (struct ethhdr *)header;

 eth->h_proto = t->eth_proto;
 ip->saddr = t->src_ipv4;
 ip->daddr = t->dst_ipv4;
 ip->version = 0x4;
 ip->ihl = 0x5;
 ip->protocol = t->ip_proto;
 ip->tot_len = cpu_to_be16(qede_flow_get_min_header_size(t) - ETH_HLEN);


 ports[0] = t->src_port;
 ports[1] = t->dst_port;
}
