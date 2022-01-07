
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ icmp6_code; scalar_t__ icmp6_type; } ;
struct nd_msg {TYPE_1__ icmph; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;


 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ NDISC_NEIGHBOUR_SOLICITATION ;

__attribute__((used)) static bool is_neigh_solicit(u8 *buf, size_t len)
{
 struct ipv6hdr *iph = (void *)buf;
 struct nd_msg *msg = (void *)(iph + 1);

 return (len >= sizeof(struct ipv6hdr) + sizeof(struct nd_msg) &&
  iph->nexthdr == IPPROTO_ICMPV6 &&
  msg->icmph.icmp6_code == 0 &&
  msg->icmph.icmp6_type == NDISC_NEIGHBOUR_SOLICITATION);
}
